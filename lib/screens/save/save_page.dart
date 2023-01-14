import "package:flutter/material.dart";
import 'package:flutter_application_1/themes.dart';

class SavePage extends StatelessWidget {
  const SavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "save",
        style: mediumText12.copyWith(color: primaryColor),
      )),
    );
  }
}
