// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_zd/components/buttons/custom_button.dart';
import 'package:test_zd/components/input/custom_text_field.dart';
import 'package:test_zd/home/view/home_page.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signUp() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print("User signed up: ${userCredential.user?.uid}");
    } catch (e) {
      print("Error during sign-up: $e");
    }
  }

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
              'Register',
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
                text: 'NEXT',
                onPressed: () {
                  _signUp();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }


}
