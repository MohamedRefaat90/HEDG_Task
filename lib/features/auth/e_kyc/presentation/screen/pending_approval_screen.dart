import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_assets.dart';
import 'package:hedg_task/core/constants/app_routes.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:lottie/lottie.dart';

class PendingApprovalScreen extends StatefulWidget {
  const PendingApprovalScreen({super.key});

  @override
  State<PendingApprovalScreen> createState() => _PendingApprovalScreenState();
}

class _PendingApprovalScreenState extends State<PendingApprovalScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),
        () => context.goNamed(AppRoutes.homeNavigation));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff10284A),
      body: Center(
          child: SizedBox(
        width: 275,
        height: 195,
        child: Card(
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(clipBehavior: Clip.none, children: [
                Positioned(
                    top: -75.h,
                    left: 50.w,
                    child: Lottie.asset(
                      AppAssets.done,
                      height: 120,
                      repeat: false,
                    )),
                Column(
                  children: [
                    30.verticalSpace,
                    const Text("Done",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    10.verticalSpace,
                    const Text(
                        "We will review your account and get back to you very shortly ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: AppColors.secondeyColor)),
                  ],
                ),
              ]),
            )),
      )),
    );
  }
}
