import 'package:demo_app/constants.dart';
import 'package:flutter/material.dart';

class CustomActionImageView extends StatelessWidget {
  final String imageUrl;
  final BorderRadius borderRadius;
  final bool showActionButton;
  final double? width;
  final double? height;

  const CustomActionImageView(
      {Key? key,
      required this.imageUrl,
      this.borderRadius = BorderRadius.zero,
      this.showActionButton = false,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: borderRadius,
          child: Image.network(
            imageUrl,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
        ),
        if (showActionButton)
          Icon(
            Icons.play_circle_fill,
            size: 64,
            color: Colors.black.withOpacity(0.5),
          ),
      ],
    );
  }
}
