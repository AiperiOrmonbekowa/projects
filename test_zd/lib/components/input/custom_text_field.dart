import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.labelText,
    this.controller,
    super.key,
  });

  final String? labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
        labelText: labelText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 3,
          ),
        ),
      ),
    );
  }
}
