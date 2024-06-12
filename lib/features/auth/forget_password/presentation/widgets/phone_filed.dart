import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/fileds_validators.dart';
import '../../../../../core/themes/app_colors.dart';

class PhoneFiled extends StatefulWidget {
  PhoneFiled({
    super.key,
    required this.textEditingController,
    required this.countryCode,
  });

  final TextEditingController textEditingController;
  String countryCode;

  @override
  State<PhoneFiled> createState() => _PhoneFiledState();
}

class _PhoneFiledState extends State<PhoneFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      validator: (value) => phoneValidator(value!),
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: "Phone Number",
          hintStyle: const TextStyle(
              fontWeight: FontWeight.w500, color: AppColors.textColor),
          prefixIcon: Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(
                border: Border(
                    right: BorderSide(color: AppColors.border, width: 2))),
            child: CountryCodePicker(
                padding: EdgeInsets.zero,
                initialSelection: "EG",
                onChanged: (value) {
                  widget.countryCode = value.dialCode!;
                }),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.border),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 28, 33, 36)),
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
