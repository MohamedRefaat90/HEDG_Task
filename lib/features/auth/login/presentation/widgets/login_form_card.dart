import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/features/auth/login/presentation/widgets/social_login.dart';

import '../../../../../core/constants/app_routes.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class LoginFormCard extends StatelessWidget {
  const LoginFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: const Color.fromRGBO(16, 40, 75, 0.5),
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(children: [
          CustomTextField(placeholderText: "Email", isobscure: false),
          10.verticalSpace,
          CustomTextField(placeholderText: "Password", isobscure: true),
          5.verticalSpace,
          TextButton(
              onPressed: () => context.pushNamed(AppRoutes.forgetPassword),
              child: const Text(
                "Forgot Your Password?",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: AppColors.secondeyColor),
              )),
          // 5.verticalSpace,
          CustomBTN(
              widget: const Text("Log In"),
              color: AppColors.secondeyColor,
              width: double.infinity,
              press: () => context.pushReplacementNamed(AppRoutes.home)),
          5.verticalSpace,
          const Text(
            "Or",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          10.verticalSpace,
          const SocialLogin(),
          10.verticalSpace,
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("Don't Have An Account ? ",
                style: TextStyle(color: AppColors.secondeyColor)),
            TextButton(
                onPressed: () => context.pushNamed(AppRoutes.signup),
                child: const Text("Sign Up",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold))),
          ])
        ]),
      ),
    );
  }
}
