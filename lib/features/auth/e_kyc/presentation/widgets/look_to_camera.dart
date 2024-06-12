import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

class LookToCamera extends StatelessWidget {
  const LookToCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 7,
      shadowColor: AppColors.black,
      child: SizedBox(
        width: 300.w,
        height: 350.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Look to the camera",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              10.verticalSpace,
              const Text("Please make sure you have a clear background.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Color.fromARGB(136, 31, 31, 65))),
            ],
          ),
        ),
      ),
    );
  }
}
