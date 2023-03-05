import 'package:flutter/material.dart';
import 'package:demo_app/constants.dart';
import '../custom_widgets/custom_text.dart';

class MatchInfoWidget extends StatelessWidget {
  final String title;
  final bool isSelected;

  const MatchInfoWidget({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, top: 20),
        child: CustomText(
          text: title,
          color: Colors.white,
          weight: isSelected ? kTitleFontWeight : kLightFontWeight,
          size: 16,
        ));
  }
}
