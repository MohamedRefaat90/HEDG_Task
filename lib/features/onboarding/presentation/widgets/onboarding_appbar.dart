import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

import '../../data/data_source/onboarding_data.dart';

AppBar onboardingAppbar(int currnetPage, PageController pageController) {
  return AppBar(actions: [
    if (currnetPage != onboardingData.length - 1)
      TextButton(
          onPressed: () => pageController.animateToPage(
              onboardingData.length - 1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
          child: const Text(
            "Skip",
            style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )),
    10.horizontalSpace
  ]);
}
