import 'package:flutter/material.dart';
import 'package:shafacode_task/features/home/widget/category_chip.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/image_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 26,
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
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                          ),

                          CategoryChip(
                            index: 1,
                            selectedIndex: selectedIndex,
                            label: 'Latest',
                            iconPath: ImagePath.latest,
                            onTap: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                          ),

                          CategoryChip(
                            index: 2,
                            selectedIndex: selectedIndex,
                            label: 'Grief & Loss',
                            iconPath: ImagePath.grief,
                            onTap: () {
                              setState(() {
                                selectedIndex = 2;
                              });
                            },
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}


