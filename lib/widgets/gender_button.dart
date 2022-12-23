import 'package:flutter/material.dart';

class genderButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final Function genderButtonClick;
  final int index;
  const genderButton({
    Key? key,
    required this.text,
    required this.isActive,
    required this.genderButtonClick,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => genderButtonClick(index),
      child: Container(
        width: 100,
        height: 35,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: isActive == true ? Color(0xFF2B4D82) : Colors.grey,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isActive == true ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
