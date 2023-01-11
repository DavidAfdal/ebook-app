import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 150,
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
                  children: [Text(title, style: semiBoldText14)],
                )
              ],
            )),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
