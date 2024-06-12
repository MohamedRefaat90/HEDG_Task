import 'dart:async';

import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'custom_btn.dart';

class ResendOtpButton extends StatefulWidget {
  const ResendOtpButton({super.key});

  @override
  State<ResendOtpButton> createState() => _ResendOtpButtonState();
}

class _ResendOtpButtonState extends State<ResendOtpButton> {
  int resendOtpDuration = 30;
  Timer? optTimer;

  @override
  Widget build(BuildContext context) {
    return resendOtpDuration == 0
        ? CustomBTN(
            widget: const Text("Resend OTP"),
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
                fontSize: 14));
  }

  @override
  void dispose() {
    optTimer!.cancel();
    super.dispose();
  }

  @override
  void initState() {
    resendOTPTimer();
    super.initState();
  }

  resendOTPTimer() {
    optTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (resendOtpDuration <= 30) {
        setState(() => resendOtpDuration--);
        if (resendOtpDuration == 0) {
          timer.cancel();
        }
      }
    });
  }
}
