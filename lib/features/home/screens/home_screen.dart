import 'package:flutter/material.dart';
import 'package:shafacode_task/features/home/widget/category_chip.dart';
import 'package:shafacode_task/features/home/widget/grid_view_item.dart' show GridViewItems;
import 'package:shafacode_task/features/home/widget/label_image.dart';
import 'package:shafacode_task/features/home/widget/section_header.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/image_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int selectedLabel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu, color: Colors.white),
                    ),
                  ),

                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          CategoryChip(
                            index: 0,
                            selectedIndex: selectedIndex,
                            label: 'Popular',
                            iconPath: ImagePath.popular,
                            onTap: () {
                              setState(() => selectedIndex = 0);
                            },
                          ),
                          CategoryChip(
                            index: 1,
                            selectedIndex: selectedIndex,
                            label: 'Latest',
                            iconPath: ImagePath.latest,
                            onTap: () {
                              setState(() => selectedIndex = 1);
                            },
                          ),
                          CategoryChip(
                            index: 2,
                            selectedIndex: selectedIndex,
                            label: 'Grief & Loss',
                            iconPath: ImagePath.grief,
                            onTap: () {
                              setState(() => selectedIndex = 2);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              GridViewItems(),

              const SizedBox(height: 40),

              SectionHeader(
                title: "Featured Wallpaper",
                onTap: () {},
              ),

              const SizedBox(height: 13),

              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 25),
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    spacing: 15,
                    children: [
                      LabelImage(index: 0, selectedIndex: selectedLabel, imagePath: ImagePath.work, onTap: () {  }),
                      LabelImage(index: 1, selectedIndex: selectedLabel, imagePath: ImagePath.relax, onTap: () {  }),
                      LabelImage(index: 2, selectedIndex: selectedLabel, imagePath: ImagePath.workOut, onTap: () {  }),
                    ],
                  )),

              const SizedBox(height: 32),

              SectionHeader(
                title: "Featured Quotes",
                onTap: () {},
              ),

              const SizedBox(height: 13),

              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 25),
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    spacing: 15,
                    children: [
                      LabelImage(index: 0, selectedIndex: selectedLabel, imagePath: ImagePath.wont, onTap: () {  }),
                      LabelImage(index: 1, selectedIndex: selectedLabel, imagePath: ImagePath.get, onTap: () {  }),
                      LabelImage(index: 2, selectedIndex: selectedLabel, imagePath: ImagePath.once, onTap: () {  }),
                    ],
                  )),

              const SizedBox(height: 40),

              SectionHeader(
                title: "Featured Memorial Cards",
                onTap: () {},
              ),

              const SizedBox(height: 13),

              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 25),
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    spacing: 15,
                    children: [
                      LabelImage(index: 0, selectedIndex: selectedLabel, imagePath: ImagePath.giveUp, onTap: () {  }),
                      LabelImage(index: 1, selectedIndex: selectedLabel, imagePath: ImagePath.struggle, onTap: () {  }),
                      LabelImage(index: 2, selectedIndex: selectedLabel, imagePath: ImagePath.be, onTap: () {  }),
                    ],
                  )),
              const SizedBox(height: 40),

              SectionHeader(
                title: "Announcement",
                onTap: () {},
              ),

              const SizedBox(height: 13),
              
              Container(
                margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                height: 132,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImagePath.positive)),
                  borderRadius: BorderRadius.circular(12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
