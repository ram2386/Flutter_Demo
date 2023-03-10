import 'package:flutter/material.dart';

class CustomHorizontalList extends StatelessWidget {
  final Widget item;
  final int count;

  const CustomHorizontalList({
    Key? key,
    required this.item,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int index) => item,
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics());
  }
}
