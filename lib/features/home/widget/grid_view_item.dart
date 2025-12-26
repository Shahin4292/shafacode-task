import 'package:flutter/material.dart';
import 'package:shafacode_task/utils/image_path.dart';

import 'grid_item.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        ],
      ),
    );
  }
}