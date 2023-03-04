import 'package:demo_app/constants.dart';
import 'package:demo_app/custom_text.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double imageRadius;
  final Color borderColor;

  const StatusWidget({
    Key? key,
    required this.title,
    required this.imageUrl,
    this.imageRadius = 36,
    this.borderColor = kPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (imageRadius * 2) + 24;

    return SizedBox(
      width: width,
      height: width + 32,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: kPrimaryColor, width: 4),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: imageRadius,
              backgroundColor: Colors.transparent,
            ),
          ),
          CustomText(
            text: title,
            color: kFontColor,
            weight: kParagraphFontWeight,
            alignment: TextAlign.center,
          )
        ],
      ),
    );
  }
}
