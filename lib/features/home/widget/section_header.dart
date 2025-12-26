import 'package:flutter/material.dart';
import 'package:shafacode_task/utils/styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const SectionHeader({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Text(
            title,
            style: ralewayMedium.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
          ),

          const Spacer(),

          GestureDetector(
            onTap: onTap,
            child: Row(
              spacing: 8,
              children: [
                Text("See All",
                  style: ralewayMedium.copyWith(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),

                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
