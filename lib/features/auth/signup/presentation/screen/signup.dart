import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../login/presentation/widgets/bubble_background.dart';
import '../widgets/signup_form_card.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          const BubbleBackground(),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(AppAssets.loginLogo, height: 70),
                  10.verticalSpace,
                  const Text("Create An Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppColors.white)),
                  10.verticalSpace,
                  const SignupFormCard()
                ]),
          ),
        ],
      ),
    );
  }
}
