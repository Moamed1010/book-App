import 'package:book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(16),
        child: Image.asset(AssetsData.testImages, fit: BoxFit.fill),
      ),
    );
  }
}