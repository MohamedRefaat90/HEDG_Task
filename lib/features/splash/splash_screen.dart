import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_routes.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),
        () => context.pushReplacementNamed(AppRoutes.onBoarding));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset("assets/logo.svg", width: 95),
            SizedBox(height: 30.h),
            const Text("HEDG",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  height: 1,
                ),
                textAlign: TextAlign.center),
            const Text("INVEST IN YOUR MONEY",
                style: TextStyle(color: AppColors.secondeyColor, fontSize: 11),
                textAlign: TextAlign.center),
          ]),
    );
  }
}
