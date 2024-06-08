import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_routes.dart';
import 'package:hedg_task/core/helpers/fileds_validators.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

import '../../../../../core/widgets/custom_btn.dart';

class PhoneFieldCard extends StatefulWidget {
  const PhoneFieldCard({super.key});

  @override
  State<PhoneFieldCard> createState() => _PhoneFieldCardState();
}

class _PhoneFieldCardState extends State<PhoneFieldCard> {
  TextEditingController textEditingController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String countryCode = "+20";

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 7,
        shadowColor: const Color.fromRGBO(9, 137, 211, 0.377),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Column(
            children: [
              Form(
                key: formKey,
                child: TextFormField(
                  controller: textEditingController,
                  validator: (value) => phoneValidator(value!),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    color: AppColors.border, width: 2))),
                        child: CountryCodePicker(
                          padding: EdgeInsets.zero,
                          initialSelection: "EG",
                          onChanged: (value) {
                            countryCode = value.dialCode!;
                          },
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 28, 33, 36)),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              20.verticalSpace,
              CustomBTN(
                  padding: 15,
                  widget: const Text("Send",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  color: AppColors.secondeyColor,
                  width: double.infinity,
                  press: () {
                    if (formKey.currentState!.validate()) {
                      context.pushNamed(AppRoutes.resetPassword);
                      debugPrint(
                          countryCode + textEditingController.text.trim());
                    }
                  })
            ],
          ),
        ));
  }
}
