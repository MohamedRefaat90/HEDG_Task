import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/app_colors.dart';

class BubbleBackground extends StatelessWidget {
  const BubbleBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -250.h,
      left: -110.w,
      child: Container(
        width: 600.w,
        height: 600.h,
        decoration: BoxDecoration(
            color: AppColors.secondeyColor,
            borderRadius: BorderRadius.circular(500)),
      ),
    );
  }
}
