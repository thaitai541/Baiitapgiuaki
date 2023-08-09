// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

@immutable
class CustomActionButton extends StatelessWidget {
  const CustomActionButton(
      {Key? key,
      required this.boxIcon,
      this.backgroundColor = Colors.white,
      this.iconColor = Colors.black})
      : super(key: key);
  final IconData boxIcon;
  final dynamic backgroundColor;
  final dynamic iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
      }),
      child: Container(
        width: Get.width * 0.13,
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 240, 237, 237),
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            boxIcon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
