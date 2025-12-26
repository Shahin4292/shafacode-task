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
        spacing: 65,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: signUp,
              child: Container(
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
          ),

          Expanded(
            child: GestureDetector(
              onTap: login,
              child: Container(
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
          ),
        ],
      ),
    );
  }
}
