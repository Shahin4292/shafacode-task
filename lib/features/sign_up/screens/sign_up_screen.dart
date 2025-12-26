import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF0D6),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [

                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/bird.png',
                        height: 263,
                        width: 263,
                        fit: BoxFit.fill
                    ),
                  ),

                  // const SizedBox(height: 25),
                  //
                  //
                  // /// Tabs
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     _tabButton(title: 'Sign Up', selected: true),
                  //     const SizedBox(width: 12),
                  //     _tabButton(title: 'Log In', selected: false),
                  //   ],
                  // ),
                  //
                  // const SizedBox(height: 24),
                  //
                  // /// Form Fields
                  // _inputField(
                  //   hint: 'Enter your username',
                  //   controller: _usernameCtrl,
                  //   onChanged: (_) => setState(() {}),
                  // ),
                  // _inputField(
                  //   hint: 'Create A Password',
                  //   controller: _passwordCtrl,
                  //   obscure: _obscurePassword,
                  //   suffix: IconButton(
                  //     icon: Icon(
                  //       _obscurePassword
                  //           ? Icons.visibility_off
                  //           : Icons.visibility,
                  //     ),
                  //     onPressed: () {
                  //       setState(() => _obscurePassword = !_obscurePassword);
                  //     },
                  //   ),
                  //   onChanged: (_) => setState(() {}),
                  // ),
                  // _inputField(
                  //   hint: 'Confirm Password',
                  //   controller: _confirmPasswordCtrl,
                  //   obscure: _obscureConfirm,
                  //   suffix: IconButton(
                  //     icon: Icon(
                  //       _obscureConfirm
                  //           ? Icons.visibility_off
                  //           : Icons.visibility,
                  //     ),
                  //     onPressed: () {
                  //       setState(() => _obscureConfirm = !_obscureConfirm);
                  //     },
                  //   ),
                  //   onChanged: (_) => setState(() {}),
                  // ),
                  // _inputField(
                  //   hint: 'Enter your email address',
                  //   controller: _emailCtrl,
                  //   onChanged: (_) => setState(() {}),
                  // ),
                  //
                  // const SizedBox(height: 24),
                  //
                  // /// Next Button
                  // ElevatedButton(
                  //   onPressed: _onNextPressed,
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor:
                  //     _isFormFilled ? Colors.red : Colors.grey,
                  //     minimumSize: const Size(140, 45),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //   ),
                  //   child: const Text(
                  //     'Next',
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                  //
                  // const SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
