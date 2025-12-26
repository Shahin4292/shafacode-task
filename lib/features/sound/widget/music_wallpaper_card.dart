import 'package:flutter/material.dart';
import 'package:shafacode_task/utils/styles.dart';

class MusicWallpaperCard extends StatelessWidget {
  final String backgroundImage;
  final String overlayImage;
  final String iconImage;
  final String title;
  final String duration;
  final VoidCallback? onPlay;

  const MusicWallpaperCard({
    super.key,
    required this.backgroundImage,
    required this.overlayImage,
    required this.iconImage,
    required this.title,
    required this.duration,
    this.onPlay,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 227,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),

        Positioned(
          top: 33, bottom: 33, left: 88, right: 88,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(overlayImage),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),

        Positioned(
          top: 64, bottom: 98, left: 121, right: 121,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(iconImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        Positioned(
          top: 134, left: 103, right: 103,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: onPlay,
                    child: const Icon(Icons.play_arrow, size: 15),
                  ),
                  Text(duration, style: ralewaySemiBold.copyWith(fontSize: 11)),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2.5),
                ),
              ),

              Text(title, style: ralewayBold.copyWith(fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }
}
