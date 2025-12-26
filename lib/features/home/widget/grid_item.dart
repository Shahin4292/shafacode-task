import 'package:flutter/material.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/styles.dart';

class GridItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;

  const GridItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.grayish,
          borderRadius: BorderRadius.circular(6),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 23,
              height: 23,
              color: AppColor.primaryColor,
            ),

            Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: ralewayMedium.copyWith(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
