import 'package:flutter/material.dart';
import 'package:shafacode_task/utils/image_path.dart';
import 'package:shafacode_task/utils/styles.dart';

class SoulActionSection extends StatelessWidget {
  final List<String> tags;
  final String views;
  final VoidCallback? onShare;
  final VoidCallback? onDownload;
  final VoidCallback? onSave;

  const SoulActionSection({
    super.key,
    required this.tags,
    required this.views,
    this.onShare,
    this.onDownload,
    this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 14,
          children: tags
              .map(
                (tag) => Text(
                  "#$tag",
                  style: ralewayMedium.copyWith(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              )
              .toList(),
        ),

        const SizedBox(height: 5),

        Row(
          spacing: 7,
          children: [
            const Icon(Icons.visibility_rounded, color: Colors.white, size: 20),
            Text(
              views,
              style: ralewaySemiBold.copyWith(
                fontSize: 12,
                color: Colors.white,
              ),
            ),

            GestureDetector(
              onTap: onShare,
              child: Row(
                children: [
                  Image.asset(ImagePath.share, height: 20, width: 20),
                  const SizedBox(width: 4),
                  Text(
                    "Share",
                    style: ralewaySemiBold.copyWith(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: onDownload,
              child: Row(
                spacing: 5,
                children: [
                  Image.asset(ImagePath.download, height: 20, width: 20),
                  Text(
                    "Download",
                    style: ralewaySemiBold.copyWith(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: onSave,
              child: Row(
                spacing: 5,
                children: [
                  Image.asset(ImagePath.saved, height: 20, width: 20),
                  Text(
                    "Save",
                    style: ralewaySemiBold.copyWith(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
