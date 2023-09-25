import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final double? borderRadius;
  final String? hintText;
  final Icon? icon;
  final bool obsecureText;
  final int maxLines;
  final String obscuringCharacter;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  const CustomTextField({
    super.key,
    this.controller,
    this.borderRadius = 10,
    this.hintText,
    this.icon,
    this.keyboardType,
    this.onChanged,
    this.maxLines = 1,
    this.obsecureText = false,
    this.obscuringCharacter = '*',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.08),
      ),
      padding: const EdgeInsets.only(left: 10, right: 12),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: icon,
          hintText: hintText,
        ),
        keyboardType: keyboardType,
        onChanged: onChanged,
        obscureText: obsecureText,
        obscuringCharacter: obscuringCharacter,
        maxLines: maxLines,
      ),
    );
  }
}
