import 'package:flutter/material.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/styles.dart';


class TopTabBar extends StatelessWidget {
  final int selectedIndex;
  final VoidCallback login;
  final VoidCallback signUp;

  const TopTabBar({
    super.key,
    required this.selectedIndex, required this.login, required this.signUp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 65),
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: signUp,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: .center,
              decoration: BoxDecoration(
                color: selectedIndex == 0 ? AppColor.primaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.primaryColor)
              ),

              child: Text(
                'Sign Up',
                style: selectedIndex == 0 ? ralewayMedium.copyWith(color: Colors.white, fontSize: 16)
                    : ralewayRegular.copyWith(fontSize: 16),
              ),
            ),
          ),

          GestureDetector(
            onTap: login,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: .center,
              decoration: BoxDecoration(
                color: selectedIndex == 1 ? AppColor.primaryColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColor.primaryColor)
              ),
              child: Text(
                'Log In',
                style: selectedIndex == 1 ? ralewayMedium.copyWith(color: Colors.white, fontSize: 16)
                    : ralewayRegular.copyWith(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
