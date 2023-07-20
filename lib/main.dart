import 'dart:async';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:betting1/bloc/tables_bloc/tables_bloc.dart';
import 'package:betting1/pages/intro1.dart';
import 'package:betting1/repository/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/route_manager.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'bloc/matche_details/match_details_bloc.dart';
import 'bloc/matches_bloc/matches_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import 'res/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
    fetchFirebaseRemoteConfig();
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    if (isVisible) {
      controller?.goBack();
      return true;
    }
    return false;
  }

  bool initFlag = true;
  bool isLoading = true;
  bool isLoading1 = true;
  @override
  Widget build(BuildContext context) {
    if (initFlag) {
      initFlag = false;
      Timer timer = Timer.periodic(Duration(seconds: 4), (timer) {
        () async {
          try {
            OneSignal.shared.setAppId(oneSignalAppId);
            OneSignal.shared
                .promptUserForPushNotificationPermission()
                .then((accepted) {});
            var s = '';
            s = (await controller?.getUrl()).toString();
            s = Uri.parse(s).host;
            print('${s.runtimeType} $s - ${Uri.parse(webviewUrl).host}');
            if (s != Uri.parse(webviewUrl).host &&
                webviewUrl != '' &&
                s != '') {
              print('=>$s - ${Uri.parse(webviewUrl).host}');

              Future.delayed(Duration.zero, () {
                setState(() {
                  isVisible = true;
                });
                timer.cancel();
              });
            }
          } catch (e) {}

          setState(() {
            isLoading = false;
          });
        }();
        Future.delayed(
            Duration(seconds: 10),
            () => setState(() {
                  isLoading1 = false;
                }));
      });
    }

    var repo = Repo();

    return MultiBlocProvider(
      providers: [
        BlocProvider<MatchesBloc>(
          create: (BuildContext context) => MatchesBloc(repo: repo),
        ),
        BlocProvider<MatchDetailsBloc>(
          create: (BuildContext context) => MatchDetailsBloc(repo: repo),
        ),
        BlocProvider<TablesBloc>(
          create: (BuildContext context) =>
              TablesBloc(repo: repo)..add(TablesEvent.fetch()),
        ),
      ],
      child: GetMaterialApp(
        home: MaterialApp(
          title: 'Sporting app',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          home: Scaffold(
            body: isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Stack(
                    children: [
                      if (!isVisible && !isLoading1) const Intro1(),
                      if (isLoading1)
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                      SafeArea(
                          child: SizedBox(
                        height: !isVisible ? 0.1 : null,
                        child: InAppWebView(
                          initialOptions: InAppWebViewGroupOptions(
                            android: AndroidInAppWebViewOptions(
                              thirdPartyCookiesEnabled: true,
                            ),
                            crossPlatform: InAppWebViewOptions(
                                transparentBackground: true),
                          ),
                          initialUrlRequest:
                              URLRequest(url: Uri.parse(webviewUrl)),
                          onWebViewCreated: (c) {
                            setState(() {
                              controller = c;
                            });
                            // setState(() {});
                          },
                        ),
                      )),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
