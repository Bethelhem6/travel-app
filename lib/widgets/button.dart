// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color bgColor;
  double size;
  final Color borderColor;
  bool? isIcon;
  ButtonWidget({
    Key? key,
    required this.color,
    this.text,
    this.icon,
    required this.bgColor,
    required this.size,
    required this.borderColor,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        left: 10,
        top: 10,
      ),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: bgColor,
      ),
      child: isIcon == false
          ? Text(
              text!,
              style: TextStyle(
                color: color,
              ),
            )
          : Icon(
              icon,
              color: color,
            ),
    );
  }
}
