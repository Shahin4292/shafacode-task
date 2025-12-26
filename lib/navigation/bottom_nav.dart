import 'package:flutter/material.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/image_path.dart';
import 'package:shafacode_task/utils/styles.dart';

class BottomNav extends StatefulWidget {
  final int initialIndex;
  const BottomNav({super.key, this.initialIndex = 0});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  final List<Widget> _screens = const [
    Center(child: Text("Home")),
    Center(child: Text("Sounds")),
    Center(child: Text("Soul")),
    Center(child: Text("Top")),
    Center(child: Text("More")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      extendBody: true,
      body: _screens[_selectedIndex],

      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: (index) => setState(() => _selectedIndex = index),
          type: BottomNavigationBarType.fixed,

          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: AppColor.primaryColor,
          selectedLabelStyle: ralewaySemiBold.copyWith(fontSize: 16, color: AppColor.primaryColor),
          unselectedLabelStyle: ralewayRegular.copyWith(fontSize: 16, color: AppColor.primaryColor),

          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 0 ? ImagePath.homeFilled : ImagePath.homeOutline,
                height: 24,
                width: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 1 ? ImagePath.soundFilled : ImagePath.soundOutline,
                height: 24,
                width: 24,
              ),
              label: 'Sounds',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 2 ? ImagePath.soulFilled : ImagePath.soulOutline,
                height: 24,
                width: 24,
              ),
              label: 'Soul',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 3 ? ImagePath.topFilled : ImagePath.topOutline,
                height: 24,
                width: 24,
              ),
              label: 'Top',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                ImagePath.more,
                height: 24,
                width: 24,
                color: _selectedIndex == 4 ? AppColor.primaryColor : AppColor.primaryColor.withOpacity(0.7),
              ),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
