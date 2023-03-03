import 'package:flutter/material.dart';

class Custom_Text extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? weight;
  final double? size;

  const Custom_Text({
    super.key,
    required this.text,
    this.color,
    this.weight,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: weight, fontSize: size),
    );
  }
}
