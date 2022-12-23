import 'package:flutter/material.dart';

import 'color_button.dart';
import 'display_body.dart';
import 'gender_button.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<String> gender_text = ["TV", "Phone"];
  List<String> color_text = ["Icon", "Text"];
  int gender_index = 0;
  int color_index = 0;

  void setGenderIndex(int idx) {
    setState(() {
      gender_index = idx;
    });
  }

  void setColorIndex(int idx) {
    setState(() {
      color_index = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < gender_text.length; i++)
                      genderButton(
                        text: gender_text[i],
                        isActive: gender_index == i ? true : false,
                        genderButtonClick: setGenderIndex,
                        index: i,
                      )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Colors",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < color_text.length; i++)
                      ColorButton(
                        text: color_text[i],
                        isActive: color_index == i ? true : false,
                        index: i,
                        colorButtonClick: setColorIndex,
                      )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: DisplayBody(
            gender_index: gender_index,
            color_index: color_index,
          ),
        )
      ],
    );
  }
}
