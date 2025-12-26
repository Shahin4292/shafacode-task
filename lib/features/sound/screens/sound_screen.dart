import 'package:flutter/material.dart';
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
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 5,
                    children: [
                      Text("Music: Wiper",style: ralewayBold.copyWith(fontSize: 12, color: Colors.white)),
                      Row(
                        spacing: 14,
                        children: [
                          Text("#Ambition",style: ralewayMedium.copyWith(fontSize: 12, color: Colors.white)),
                          Text("#Inspiration",style: ralewayMedium.copyWith(fontSize: 12, color: Colors.white)),
                          Text("#Motivitioanal",style: ralewayMedium.copyWith(fontSize: 12, color: Colors.white)),
                        ],
                      ),

                      Row(
                        spacing: 10,
                        children: [
                          Icon(Icons.visibility_rounded,color: Colors.white,size: 20),
                          Text("567.57k",style: ralewaySemiBold.copyWith(fontSize: 12, color: Colors.white,)),

                          Icon(Icons.share,color: Colors.white,size: 20),
                          Text("Share",style: ralewaySemiBold.copyWith(fontSize: 12,color: Colors.white)),

                          Icon(Icons.download,color: Colors.white,size: 20),
                          Text("Download",style: ralewaySemiBold.copyWith(fontSize: 12,color: Colors.white,)),

                          Icon(Icons.save,color: Colors.white,size: 20),
                          Text("Save",style: ralewaySemiBold.copyWith(fontSize: 12,color: Colors.white,)),
                        ],
                      )
                    ],
                  ),

                  MusicWallpaperCard(
                    backgroundImage: ImagePath.wiperTwo,
                    overlayImage: ImagePath.subtract,
                    iconImage: ImagePath.music,
                    title: "Wiper",
                    duration: "10.00",
                    onPlay: () {},
                  ),

                  MusicWallpaperCard(
                    backgroundImage: ImagePath.wiperOne,
                    overlayImage: ImagePath.subtract,
                    iconImage: ImagePath.music,
                    title: "Wiper",
                    duration: "10.00",
                    onPlay: () {},
                  )
                ],
              ),)),
      ),
    );
  }
}
