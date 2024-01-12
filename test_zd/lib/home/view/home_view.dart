import 'package:flutter/material.dart';
import 'package:test_zd/components/images/background_image.dart';
import 'package:test_zd/login/view/login_view.dart';
import 'package:test_zd/register/view/register_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BackgroundImage(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                text: 'LOG IN',
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginView.LoginView()),
                  );
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CustomElevatedButton(
                text: 'REGISTER',
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterView(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text,
    this.color,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final Color? color;
  final Color textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
