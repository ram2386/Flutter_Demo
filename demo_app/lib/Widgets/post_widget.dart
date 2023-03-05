import 'package:flutter/material.dart';
import 'package:demo_app/constants.dart';
import 'package:demo_app/custom_widgets/custom_action_image_view.dart';
import 'package:demo_app/custom_widgets/custom_text.dart';

class PostWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final Function()? callback;

  const PostWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black.withOpacity(0.1),
      onTap: callback,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: kDividerColor,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Wrap(
            runSpacing: 12,
            children: [
              CustomActionImageView(
                imageUrl: imageUrl,
                showActionButton: true,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              CustomText(
                text: title,
                size: 20,
                color: kHighlightedFontColor,
                weight: kTitleFontWeight,
              ),
              CustomText(
                text: description,
                size: 16,
                color: kFontColor,
                weight: kParagraphFontWeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
