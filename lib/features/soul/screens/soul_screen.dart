import 'package:flutter/material.dart';
import 'package:shafacode_task/features/soul/widget/soul_action_section.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/image_path.dart';
import 'package:shafacode_task/utils/styles.dart';

class SoulScreen extends StatelessWidget {
  const SoulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SingleChildScrollView(child: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              height: 227,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePath.dalaiLama),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            SizedBox(height: 9),

            SoulActionSection(
              tags: ["Ambition", "Inspiration", "Motivitioanal"],
              views: "567.57k",
              onShare: () {},
              onDownload: () {},
              onSave: () {},
            ),

            SizedBox(height: 25),

            Container(
              height: 227,
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFCACA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "You cannot let a fear of failure or a fear of comparison or a fear of judgment stop you from doing the things that will make you great.",
                  textAlign: TextAlign.center,
                  style: ralewayMedium.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),

            SizedBox(height: 9),

            SoulActionSection(
              tags: ["Ambition", "Inspiration", "Motivitioanal"],
              views: "567.57k",
              onShare: () {},
              onDownload: () {},
              onSave: () {},
            ),

            SizedBox(height: 25),

            Container(
              height: 227,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePath.pacino),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            SizedBox(height: 9),

            SoulActionSection(
              tags: ["Ambition", "Inspiration", "Motivitioanal"],
              views: "567.57k",
              onShare: () {},
              onDownload: () {},
              onSave: () {},
            ),
          ],
        ),
      )),),
    );
  }
}
