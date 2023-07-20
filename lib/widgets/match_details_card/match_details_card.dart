import 'package:betting1/models/match_detail/match_details.dart';
import 'package:betting1/models/matches/matches.dart';
import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class MatchDetailsCard extends StatefulWidget {
  MatchDetailsCard(
      {super.key, required this.tournament, required this.matchDetails});
  Tournament tournament;
  MatchDetails matchDetails;

  @override
  State<MatchDetailsCard> createState() => _MatchDetailsCardState();
}

class _MatchDetailsCardState extends State<MatchDetailsCard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Container(
      height: index == 0
          ? 340
          : index == 1
              ? 500
              : 100,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
        color: index == 0 ? Styles.blue : null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              MatchMenuContainer(
                  isActive: index == 0,
                  title: 'Match Detail',
                  fun: () => setState(() {
                        index = 0;
                      })),
              MatchMenuContainer(
                  isActive: index == 1,
                  title: 'Line Up',
                  fun: () => setState(() {
                        index = 1;
                      })),
              MatchMenuContainer(
                  isActive: index == 2,
                  title: 'H2H',
                  fun: () => setState(() {
                        index = 2;
                      })),
            ],
          ),
          SizedBox(height: 20),
          if (index == 0)
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.matchDetails.Stat[0].Shon.toString(),
                        style: Styles.buttonTextWhite),
                    Text('Shots on target', style: Styles.buttonTextWhite),
                    Text(widget.matchDetails.Stat[1].Shon.toString(),
                        style: Styles.buttonTextWhite),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.matchDetails.Stat[0].Shof.toString(),
                        style: Styles.buttonTextWhite),
                    Text('Shots off target', style: Styles.buttonTextWhite),
                    Text(widget.matchDetails.Stat[1].Shof.toString(),
                        style: Styles.buttonTextWhite),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.matchDetails.Stat[0].Pss.toString(),
                        style: Styles.buttonTextWhite),
                    Text('Possession (%)', style: Styles.buttonTextWhite),
                    Text(widget.matchDetails.Stat[1].Pss.toString(),
                        style: Styles.buttonTextWhite),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.matchDetails.Stat[0].Ycs.toString(),
                        style: Styles.buttonTextWhite),
                    Text('Yellow cards', style: Styles.buttonTextWhite),
                    Text(widget.matchDetails.Stat[1].Ycs.toString(),
                        style: Styles.buttonTextWhite),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.matchDetails.Stat[0].Cos.toString(),
                        style: Styles.buttonTextWhite),
                    Text('Corners', style: Styles.buttonTextWhite),
                    Text(widget.matchDetails.Stat[1].Cos.toString(),
                        style: Styles.buttonTextWhite),
                  ],
                )
              ],
            ),
          if (index == 1)
            Column(
              children: [
                Text(
                  'Formation',
                  style: Styles.h2,
                ),
                Image.asset('images/p1.png')
              ],
            )
        ],
      ),
    );
  }
}

class MatchMenuContainer extends StatelessWidget {
  MatchMenuContainer(
      {super.key,
      required this.isActive,
      required this.title,
      required this.fun});
  bool isActive;
  String title;
  Function fun;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => fun(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isActive ? Styles.blueDark : null),
        child: Text(
          title,
          style: Styles.h2,
        ),
      ),
    );
  }
}
