import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/features/auth/login/presentation/widgets/social_login.dart';

import '../../../../../core/constants/app_routes.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../forget_password/presentation/widgets/phone_filed.dart';

class SignupFormCard extends StatefulWidget {
  const SignupFormCard({super.key});

  @override
  State<SignupFormCard> createState() => _SignupFormCardState();
}

class _SignupFormCardState extends State<SignupFormCard> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String countryCode = "+20";

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
          CustomTextField(
              placeholderText: "Full Name",
              textEditingController: fullNameController,
              isobscure: false),
          10.verticalSpace,
          CustomTextField(
              placeholderText: "Email",
              textEditingController: emailController,
              isobscure: false),
          10.verticalSpace,
          CustomTextField(
              placeholderText: "Password",
              textEditingController: passwordController,
              isPass: true,
              isobscure: true),
          5.verticalSpace,
          PhoneFiled(
              textEditingController: phoneController, countryCode: countryCode),
          5.verticalSpace,
          CustomBTN(
              widget: const Text("Sign Up"),
              color: AppColors.secondeyColor,
              width: double.infinity,
              press: () =>
                  context.pushReplacementNamed(AppRoutes.varificaition)),
          5.verticalSpace,
          const Text(
            "Or",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          10.verticalSpace,
          const SocialLogin(),
          10.verticalSpace,
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(" Have An Account ?",
                style: TextStyle(color: AppColors.secondeyColor)),
            TextButton(
                onPressed: () => context.pop(),
                child: const Text("Log In",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold))),
          ])
        ]),
      ),
    );
  }
}
