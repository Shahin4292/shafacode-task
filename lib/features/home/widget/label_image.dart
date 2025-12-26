import 'package:flutter/material.dart';

class LabelImage extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String imagePath;
  final VoidCallback onTap;

  const LabelImage({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 132,
        width: 132,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
