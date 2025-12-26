import 'package:flutter/material.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/styles.dart';

class CustomNextButton extends StatelessWidget {
  final VoidCallback? onTap;
  final bool isEnabled;
  final String text;

  const CustomNextButton({
    super.key,
    required this.onTap,
    required this.isEnabled,
    this.text = 'Next',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 77,
        height: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isEnabled ? AppColor.primaryColor : AppColor.primaryColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          text,
          style: ralewaySemiBold.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
