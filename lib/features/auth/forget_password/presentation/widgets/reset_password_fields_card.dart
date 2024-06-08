import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_routes.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/core/widgets/custom_text_field.dart';

import '../../../../../core/widgets/custom_btn.dart';

class ResetPasswordFiledCard extends StatefulWidget {
  const ResetPasswordFiledCard({super.key});

  @override
  State<ResetPasswordFiledCard> createState() => _PhoneFieldCardState();
}

class _PhoneFieldCardState extends State<ResetPasswordFiledCard> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String countryCode = "+20";

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
                child: Column(
                  children: [
                    CustomTextField(
                        placeholderText: "New Password",
                        validator: (newPassword) {
                          if (newPassword!.isEmpty) {
                            return "Enter New Password";
                          }
                          return null;
                        },
                        textEditingController: passwordController,
                        isobscure: true),
                    10.verticalSpace,
                    CustomTextField(
                        placeholderText: "Re-Password",
                        validator: (confirmPassword) {
                          if (passwordController.text != confirmPassword) {
                            return "Password Not Match";
                          }
                          return null;
                        },
                        textEditingController: confirmPasswordController,
                        isobscure: true)
                  ],
                ),
              ),
              20.verticalSpace,
              CustomBTN(
                  padding: 15,
                  widget: const Text("Confirm",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  color: AppColors.secondeyColor,
                  width: double.infinity,
                  press: () {
                    if (formKey.currentState!.validate()) {
                      context.goNamed(AppRoutes.faceId);
                    }
                  })
            ],
          ),
        ));
  }

  @override
  void dispose() {
    confirmPasswordController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
