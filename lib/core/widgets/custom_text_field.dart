import 'package:flutter/material.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

bool passwordVisiabilty = true;

IconData togglePasswordVisiabiltyIcon(bool passwordVisiabilty) {
  if (passwordVisiabilty) {
    return Icons.visibility_outlined;
  } else {
    return Icons.visibility_off_outlined;
  }
}

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final TextEditingController? textEditingController;
  final String placeholderText;
  final IconData? icon;
  // final bool passwordVisibiltyIcon;
  final void Function(String)? onChange;
  final String? Function(String?)? validator;
  bool isobscure;
  CustomTextField(
      {this.textEditingController,
      super.key,
      required this.placeholderText,
      this.icon,
      // required this.passwordVisibiltyIcon,
      required this.isobscure,
      this.onChange,
      this.validator});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      obscureText: widget.isobscure,
      validator: widget.validator,
      onChanged: widget.onChange,
      decoration: InputDecoration(
        enabled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        filled: true,
        hintText: widget.placeholderText,
        hintStyle: const TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.w500,
            fontSize: 14),
        fillColor: AppColors.white,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(34, 16, 40, 74)),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondeyColor),
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
