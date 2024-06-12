import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/constants/app_assets.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

import '../../../../../core/widgets/custom_appbar.dart';
import '../../../../../core/widgets/resend_otp_button.dart';
import '../widgets/phone_field_card.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppbar(context),
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
          const ResendOtpButton()
        ]),
      ),
    );
  }
}
