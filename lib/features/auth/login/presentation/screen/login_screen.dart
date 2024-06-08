import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/constants/app_assets.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/auth/login/presentation/widgets/bubble_background.dart';

import '../widgets/login_form_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          const BubbleBackground(),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(AppAssets.loginLogo, height: 70),
                20.verticalSpace,
                const Text("Log In Your Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.white)),
                40.verticalSpace,
                const LoginFormCard()
              ]),
        ],
      ),
    );
  }
}
