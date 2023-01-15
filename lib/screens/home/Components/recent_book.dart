import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.title,
    required this.percent,
  }) : super(key: key);

  final String image;
  final String title;
  final int percent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 180,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(color: border),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Row(
              children: [
                Image.asset(
                  image,
                  width: 90,
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text(title, style: semiBoldText14),
                    CircularPercentIndicator(
                      radius: 50,
                      lineWidth: 7,
                      animation: true,
                      percent: percent / 100,
                      center: Text(
                        '$percent %',
                        style: mediumText12,
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: primaryColor,
                    ),
                    Text(
                      '$percent % completed',
                      style: regularText12.copyWith(color: grayColor),
                    ),
                  ],
                )
              ],
            )),
        SizedBox(
          width: 40,
        )
      ],
    );
  }
}
