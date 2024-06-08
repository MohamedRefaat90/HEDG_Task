import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hedg_task/core/constants/app_assets.dart';
import 'package:hedg_task/core/widgets/custom_btn.dart';

import '../../../../../core/themes/app_colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomBTN(
          widget: SvgPicture.asset(AppAssets.googleIcon),
          color: AppColors.btnBackground,
          press: () {}),
      20.horizontalSpace,
      CustomBTN(
          widget: SvgPicture.asset(AppAssets.appleIcon),
          color: AppColors.btnBackground,
          press: () {}),
    ]);
  }
}
