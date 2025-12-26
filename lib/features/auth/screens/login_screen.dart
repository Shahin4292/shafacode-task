import 'package:flutter/material.dart';
import 'package:shafacode_task/features/auth/widget/custom_next_button.dart';
import 'package:shafacode_task/features/auth/widget/custom_text_field.dart';
import 'package:shafacode_task/features/auth/widget/top_tap_bar.dart';
import 'package:shafacode_task/utils/image_path.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _passwordCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  int selectedIndex = 1;

  bool get isFormFilled {
    return _passwordCtrl.text.isNotEmpty &&
        _emailCtrl.text.isNotEmpty;
  }


  @override
  void initState() {
    super.initState();
    _passwordCtrl.addListener(_onTextChange);
    _emailCtrl.addListener(_onTextChange);
  }

  void _onTextChange() {
    setState(() {});
  }

  @override
  void dispose() {
    _passwordCtrl.dispose();
    _emailCtrl.dispose();
    super.dispose();
  }


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
                      Navigator.pop(context);
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
                        CustomTextField(hintText: 'Enter your email address', controller: _emailCtrl),
                        CustomTextField(hintText: 'Enter Password', controller: _passwordCtrl, isPassword: true,),
                      ],
                    ),
                  ),

                  CustomNextButton(
                    onTap: () {
                      if (!isFormFilled) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please fill all fields'),
                          ),
                        );
                        return;
                      }
                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(builder: (_) => const HomeScreen()),
                      //       (route) => false,
                      // );
                    },
                    isEnabled: isFormFilled,
                  ),

                  SizedBox(height: 14),

                  Image.asset(ImagePath.image,
                      height: 250,
                      width: MediaQuery.sizeOf(context).width,
                      fit: BoxFit.fill
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
