import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_assets.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/core/widgets/custom_btn.dart';

import '../widgets/phone_field_card.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({super.key});

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  int resendOtpDuration = 30;

  @override
  void initState() {
    resendOTPTimer();
    super.initState();
  }

  resendOTPTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (resendOtpDuration <= 30) {
        setState(() => resendOtpDuration--);
        if (resendOtpDuration == 0) {
          timer.cancel();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back_ios))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(AppAssets.forgetPassword, height: 140),
          30.verticalSpace,
          const Text("Forgot Password?",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: AppColors.primaryColor)),
          10.verticalSpace,
          const SizedBox(
            width: 250,
            child: Text("enter your phone number to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.textColor)),
          ),
          20.verticalSpace,
          const PhoneFieldCard(),
          20.verticalSpace,
          resendOtpDuration == 0
              ? CustomBTN(
                  widget: const Text("Resen OTP"),
                  color: AppColors.primaryColor,
                  padding: 12,
                  press: () {
                    setState(() {
                      resendOtpDuration = 30;
                      resendOTPTimer();
                    });
                  })
              : Text("Re-Send Code In 0:$resendOtpDuration",
                  style: const TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14))
        ]),
      ),
    );
  }
}
