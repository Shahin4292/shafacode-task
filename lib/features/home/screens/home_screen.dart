import 'package:flutter/material.dart';
import 'package:shafacode_task/features/home/widget/category_chip.dart';
import 'package:shafacode_task/features/home/widget/grid_view_item.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/image_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

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

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  childAspectRatio: 1.2,
                  children: [
                    GridItem(
                      iconPath: ImagePath.cardinal,
                      title: 'Cardinal\nSounds',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.wallpaper,
                      title: 'Wallpaper',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.nature,
                      title: 'Nature Sounds',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.sleeping,
                      title: 'Sleeping Sounds',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.meditation,
                      title: 'Meditation',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.breathing,
                      title: 'Breathing Exercises',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.short,
                      title: 'Short Meditations',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.meditational,
                      title: 'Meditational Audios',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.topFilled,
                      title: 'Top Quotes',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.soulFilled,
                      title: 'Soul Check-In',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.sacred,
                      title: 'Sacred Journals',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.medicine,
                      title: 'Medicine Notes',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.memorial,
                      title: 'Memorial Cards',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.save,
                      title: 'Save',
                      onTap: () {},
                    ),

                    GridItem(
                      iconPath: ImagePath.cardinals,
                      title: 'Cardinal Quotes',
                      onTap: () {},
                    ),

                    // GridItem(
                    //   iconPath: ImagePath.wallpaper,
                    //   title: 'Wallpaper',
                    //   onTap: () {
                    //     debugPrint('Cardinal Sounds');
                    //   },
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
