import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/onboarding/data/model/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModel onboardingModel;
  const OnboardingItem({super.key, required this.onboardingModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: onboardingModel.shapeAlignment,
      children: [
        SvgPicture.asset(onboardingModel.shape),
        Center(
          child: Column(
            children: [
              Image.asset(onboardingModel.img),
              80.verticalSpace,
              Text(
                onboardingModel.title,
                style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              20.verticalSpace,
              SizedBox(
                width: 250,
                child: Text(
                  onboardingModel.desc,
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(color: AppColors.textColor, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
