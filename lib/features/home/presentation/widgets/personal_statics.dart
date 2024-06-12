import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hedg_task/features/home/presentation/widgets/home_chart.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/widgets/custom_btn.dart';

class PersonalStatics extends StatelessWidget {
  const PersonalStatics({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: AppColors.white,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
          child: Column(children: [
            Row(
              children: [
                DefaultTextStyle(
                  style: const TextStyle(color: AppColors.secondeyColor),
                  child: Expanded(
                      flex: 2,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hi Ahmed!",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            const Text("fri, 31May,2024"),
                            30.verticalSpace,
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Investment Value",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                  10.verticalSpace,
                                  const Text("60,500 EGP",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18)),
                                  20.verticalSpace,
                                  const Text("Total Returns",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
                                  10.verticalSpace,
                                  const Text("11,500 EGP",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18)),
                                  10.verticalSpace,
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(AppAssets.arrowUp,
                                          height: 12),
                                      10.horizontalSpace,
                                      const Text("12.2%",
                                          style: TextStyle(
                                              color: AppColors.primaryColor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16))
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ])),
                ),
                const HomeChart(),
              ],
            ),
            CustomBTN(
                widget: const Text("Portfolio Details",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                width: double.infinity,
                color: AppColors.secondeyColor,
                press: () {})
          ]),
        ),
      ),
    );
  }
}
