import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.text,
    this.onPressed,
    super.key,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: const Size(double.maxFinite, 60),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
