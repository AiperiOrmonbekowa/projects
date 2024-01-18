// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_zd/components/buttons/custom_button.dart';
import 'package:test_zd/components/input/custom_text_field.dart';
import 'package:test_zd/home/view/home_page.dart';

class LoginView extends StatefulWidget {
  const LoginView.LoginView({super.key});

  @override
  State<LoginView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<LoginView> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signIn() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print("User signed in: ${userCredential.user?.uid}");
    } catch (e) {
      print("Error during sign-in: $e");
    }
  }

  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  // void signUserIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController.text, password: passwordController.text);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Log In',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: _emailController,
              labelText: 'Email',
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: _passwordController,
              labelText: 'Password',
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(
                text: 'Log In',
                onPressed: () {
                  _signIn;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                }),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // if (checkForm()) {
  //   Login(email: _emailCtl.text, password: _passwordCtl.text);
  // } else {
  //   log('Form is not valid');
  // }

//   bool checkForm() {
//     if (_emailCtl.text.isNotEmpty &&
//         _passwordCtl.text.isNotEmpty &&
//         _confirmPasswordCtl.text.isNotEmpty) {
//       return true;
//     } else {
//       return false;
//     }
//   }
}

