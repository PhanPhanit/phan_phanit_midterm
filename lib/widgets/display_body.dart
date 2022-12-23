import 'package:flutter/material.dart';

class DisplayBody extends StatelessWidget {
  final int gender_index;
  final int color_index;
  const DisplayBody({
    super.key,
    required this.gender_index,
    required this.color_index,
  });

  Widget generateWidget() {
    if (gender_index == 0 && color_index == 0) {
      return Icon(
        Icons.tv,
        color: Color(0xFF2B4D82),
        size: 100,
      );
    } else if (gender_index == 0 && color_index == 1) {
      return Text(
        "TV",
        style: TextStyle(
          color: Color(0xFF2B4D82),
          fontWeight: FontWeight.bold,
          fontSize: 100,
        ),
      );
    } else if (gender_index == 1 && color_index == 0) {
      return Icon(
        Icons.phone_android,
        color: Color(0xFF2B4D82),
        size: 100,
      );
    } else {
      return Text(
        "Phone",
        style: TextStyle(
          color: Color(0xFF2B4D82),
          fontWeight: FontWeight.bold,
          fontSize: 100,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: generateWidget(),
    );
  }
}
