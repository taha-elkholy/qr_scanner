import 'package:flutter/material.dart';

class MyColoredBox extends StatelessWidget {
  const MyColoredBox(
      {Key? key,
      required this.width,
      required this.height,
      required this.color})
      : super(key: key);
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
    );
  }
}
