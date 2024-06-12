import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/constants/app_assets.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class FaceIdScreen extends StatelessWidget {
  const FaceIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.greyLogo, height: 45),
            30.verticalSpace,
            const Text("Entre PIN code",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            50.verticalSpace,
            Image.asset(AppAssets.faceId, height: 125),
            30.verticalSpace,
            OtpPinField(
              otpPinFieldDecoration:
                  OtpPinFieldDecoration.defaultPinBoxDecoration,
              fieldHeight: 55,
              fieldWidth: 40,
              onChange: (text) {},
              onSubmit: (text) {},
            )
          ]),
    );
  }
}
