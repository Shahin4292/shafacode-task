import 'package:flutter/material.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/styles.dart';

class CategoryChip extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String label;
  final String iconPath;
  final VoidCallback onTap;

  const CategoryChip({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.label,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.symmetric(horizontal: 13),
        decoration: BoxDecoration(
          color: AppColor.grayish,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          spacing: 4,
          children: [
            Image.asset(
              iconPath,
              width: 24,
              height: 24,
              color: AppColor.primaryColor.withOpacity(0.7),
            ),

            Text(
              label,
              style: ralewayMedium.copyWith(
                fontSize: 15,
                color: AppColor.primaryColor.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
