import 'package:flutter/material.dart';
import 'package:shafacode_task/features/auth/screens/login_screen.dart';
import 'package:shafacode_task/features/auth/widget/custom_next_button.dart';
import 'package:shafacode_task/features/auth/widget/custom_text_field.dart';
import 'package:shafacode_task/features/auth/widget/top_tap_bar.dart';
import 'package:shafacode_task/utils/image_path.dart';

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

  bool get isFormFilled {
    return _usernameCtrl.text.isNotEmpty &&
        _passwordCtrl.text.isNotEmpty &&
        _confirmPasswordCtrl.text.isNotEmpty &&
        _emailCtrl.text.isNotEmpty;
  }


  @override
  void initState() {
    super.initState();
    _usernameCtrl.addListener(_onTextChange);
    _passwordCtrl.addListener(_onTextChange);
    _confirmPasswordCtrl.addListener(_onTextChange);
    _emailCtrl.addListener(_onTextChange);
  }

  void _onTextChange() {
    if (!mounted) return;
    setState(() {});
  }


  void controllerClean(){
    _usernameCtrl.clear();
    _passwordCtrl.clear();
    _confirmPasswordCtrl.clear();
    _emailCtrl.clear();
  }

  @override
  void dispose() {
    _usernameCtrl.dispose();
    _passwordCtrl.dispose();
    _confirmPasswordCtrl.dispose();
    _emailCtrl.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF0D6),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: SafeArea(
                  child: Column(
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
                          Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
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
                          controllerClean();
                        },
                        isEnabled: isFormFilled,
                      ),

                      SizedBox(height: 14),

                      const Spacer(),

                      Image.asset(ImagePath.image,
                          height: 250,
                          width: MediaQuery.sizeOf(context).width,
                          fit: BoxFit.fill
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
