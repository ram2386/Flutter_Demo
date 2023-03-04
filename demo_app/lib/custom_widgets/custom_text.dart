import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? weight;
  final double? size;
  final TextAlign? alignment;

  const CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.weight,
      this.size,
      this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: weight, fontSize: size),
      textAlign: alignment,
    );
  }
}
