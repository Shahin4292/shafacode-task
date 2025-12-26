import 'package:flutter/material.dart';
import 'package:shafacode_task/features/sound/widget/music_info_section.dart';
import 'package:shafacode_task/features/sound/widget/music_wallpaper_card.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/image_path.dart';
import 'package:shafacode_task/utils/styles.dart';

class SoundScreen extends StatelessWidget {
  const SoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [

                  MusicWallpaperCard(
                    backgroundImage: ImagePath.wiperOne,
                    overlayImage: ImagePath.subtract,
                    iconImage: ImagePath.music,
                    title: "Wiper",
                    duration: "10.00",
                    onPlay: () {},
                  ),

                  MusicInfoSection(
                    title: "Music: Wiper",
                    tags: ["Ambition", "Inspiration", "Motivitioanal"],
                    views: "567.57k",
                    onShare: () {},
                    onDownload: () {},
                    onSave: () {},
                  ),


                  MusicWallpaperCard(
                    backgroundImage: ImagePath.wiperTwo,
                    overlayImage: ImagePath.subtract,
                    iconImage: ImagePath.music,
                    title: "Wiper",
                    duration: "10.00",
                    onPlay: () {},
                  ),

                  MusicInfoSection(
                    title: "Music: Wiper",
                    tags: ["Ambition", "Inspiration", "Motivitioanal"],
                    views: "567.57k",
                    onShare: () {},
                    onDownload: () {},
                    onSave: () {},
                  ),

                  MusicWallpaperCard(
                    backgroundImage: ImagePath.wiperOne,
                    overlayImage: ImagePath.subtract,
                    iconImage: ImagePath.music,
                    title: "Wiper",
                    duration: "10.00",
                    onPlay: () {},
                  ),

                  MusicInfoSection(
                    title: "Music: Wiper",
                    tags: ["Ambition", "Inspiration", "Motivitioanal"],
                    views: "567.57k",
                    onShare: () {},
                    onDownload: () {},
                    onSave: () {},
                  ),

                ],
              ),)),
      ),
    );
  }
}
