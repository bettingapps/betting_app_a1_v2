import 'package:betting1/pages/detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/matches/matches.dart';
import '../../../res/styles.dart';

class MatchCard extends StatelessWidget {
  MatchCard(
      {super.key,
      required this.event,
      required this.isOpen,
      required this.tournament});
  bool isOpen;
  Event event;
  Tournament tournament;
  @override
  Widget build(BuildContext context) {
    return !isOpen
        ? SizedBox()
        : InkWell(
            onTap: () => Get.to(Detail(
              event: event,
              tournament: tournament,
            )),
            child: Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Styles.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child: CachedNetworkImage(
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                                imageUrl:
                                    'https://lsm-static-prod.livescore.com/medium/${event.T1[0].Img}'),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 30,
                            height: 30,
                            child: CachedNetworkImage(
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                                imageUrl:
                                    'https://lsm-static-prod.livescore.com/medium/${event.T2[0].Img}'),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 90,
                                child: Text(
                                  event.T1[0].Nm!,
                                  style: Styles.small,
                                  maxLines: 1,
                                ),
                              ),
                              Text(
                                event.Tr1 != null ? event.Tr1.toString() : '',
                                style: Styles.small,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '   vs   ',
                                style: Styles.small,
                              ),
                              Text(
                                '   -   ',
                                style: Styles.small,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 90,
                                child: Text(
                                  event.T2[0].Nm!,
                                  style: Styles.small,
                                  maxLines: 1,
                                ),
                              ),
                              Text(
                                event.Tr2 != null ? event.Tr2.toString() : '',
                                style: Styles.small,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      event.Eps!,
                      style: Styles.h2,
                    ),
                    width: 60,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Styles.blueDark,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
