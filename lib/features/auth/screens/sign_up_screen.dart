import 'package:flutter/material.dart';
import 'package:shafacode_task/features/auth/widget/custom_text_field.dart';
import 'package:shafacode_task/features/auth/widget/top_tap_bar.dart';
import 'package:shafacode_task/utils/app_color.dart';
import 'package:shafacode_task/utils/image_path.dart';
import 'package:shafacode_task/utils/styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmPasswordCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF0D6),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [

                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(ImagePath.bird,
                        height: 263,
                        width: 263,
                        fit: BoxFit.fill
                    ),
                  ),

                  TopTabBar(
                    selectedIndex: selectedIndex,
                    signUp: () {
                      setState(() => selectedIndex = 0);
                    },
                    login: () {
                      setState(() => selectedIndex = 1);
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 40),
                    child: Column(
                      spacing: 15,
                      children: [
                        CustomTextField(hintText: 'Enter Your Username', controller: _usernameCtrl),
                        CustomTextField(hintText: 'Create A Password', controller: _passwordCtrl, isPassword: true,),
                        CustomTextField(hintText: 'Confirm Password', controller: _confirmPasswordCtrl, isPassword: true,),
                        CustomTextField(hintText: 'Enter your email address', controller: _emailCtrl),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
