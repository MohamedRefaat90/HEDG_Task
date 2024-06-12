import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_routes.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../../../core/widgets/resend_otp_button.dart';

class VarificationScreen extends StatelessWidget {
  const VarificationScreen({super.key});

  final String phoneNumber = "+2001126008737";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppbar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.varification, height: 140),
            30.verticalSpace,
            const Text("Verification",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: AppColors.primaryColor)),
            10.verticalSpace,
            SizedBox(
              width: 250,
              child: Text("enter 4 digit numbers that sent to $phoneNumber",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textColor)),
            ),
            20.verticalSpace,
            Card(
                elevation: 7,
                shadowColor: const Color.fromRGBO(9, 137, 211, 0.377),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                  child: Column(
                    children: [
                      OtpPinField(
                        otpPinFieldDecoration:
                            OtpPinFieldDecoration.underlinedPinBoxDecoration,
                        otpPinFieldStyle: const OtpPinFieldStyle(
                            activeFieldBorderColor: AppColors.secondeyColor,
                            textStyle: TextStyle(
                                color: AppColors.secondeyColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        fieldHeight: 55,
                        fieldWidth: 40,
                        onChange: (text) {},
                        onSubmit: (text) {},
                      ),
                      20.verticalSpace,
                      CustomBTN(
                          padding: 15,
                          widget: const Text("Send",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18)),
                          color: AppColors.secondeyColor,
                          width: double.infinity,
                          press: () => context.goNamed(AppRoutes.eKYC)),
                      20.verticalSpace,
                      const ResendOtpButton()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
