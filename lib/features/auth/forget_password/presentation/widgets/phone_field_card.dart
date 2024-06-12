import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_routes.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

import '../../../../../core/widgets/custom_btn.dart';
import 'phone_filed.dart';

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
                child: PhoneFiled(
                    textEditingController: textEditingController,
                    countryCode: countryCode),
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

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
