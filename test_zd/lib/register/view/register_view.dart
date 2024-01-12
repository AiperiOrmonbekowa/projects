import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_zd/components/buttons/custom_button.dart';
import 'package:test_zd/components/input/custom_text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
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
              controller: emailController,
              labelText: 'Email',
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: passwordController,
              labelText: 'Password',
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(text: 'NEXT', onPressed: signUserIn),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

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
