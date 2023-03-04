import 'package:flutter/material.dart';

class ReportRow extends StatelessWidget {
  final List<Widget> leftSide;
  final List<Widget>? rightSide;
  const ReportRow({
    Key? key,
    required this.leftSide,
    this.rightSide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: leftSide + [Spacer()] + (rightSide ?? []),
    );
  }
}
