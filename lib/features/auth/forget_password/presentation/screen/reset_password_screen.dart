import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../widgets/reset_password_fields_card.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back_ios))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(AppAssets.forgetPassword, height: 140),
            30.verticalSpace,
            const Text("Create New Password",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: AppColors.primaryColor)),
            10.verticalSpace,
            const SizedBox(
              width: 250,
              child: Text(
                  "your new password must be different from previously used passwords",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textColor)),
            ),
            20.verticalSpace,
            const ResetPasswordFiledCard(),
          ]),
        ),
      ),
    );
  }
}
