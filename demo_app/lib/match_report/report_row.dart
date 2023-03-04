import 'package:flutter/material.dart';

class ReportRow extends StatelessWidget {
  final List<Widget> leftSide;
  final List<Widget>? rightSide;
  const ReportRow({
    super.key,
    required this.leftSide,
    this.rightSide,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: leftSide + [Spacer()] + (rightSide ?? []),
    );
  }
}
