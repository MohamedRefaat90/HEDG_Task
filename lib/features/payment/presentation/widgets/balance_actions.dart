import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/widgets/custom_btn.dart';

class BalanceActions extends StatelessWidget {
  const BalanceActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomBTN(
          padding: 10,
          radius: 10,
          widget: Row(
            children: [
              const Text(
                "Top Up",
                style: TextStyle(color: Color(0xff799299)),
              ),
              5.horizontalSpace,
              const Icon(
                Icons.add,
                color: AppColors.primaryColor,
                size: 30,
              )
            ],
          ),
          color: const Color(0xffE6FBF6),
          press: () {}),
      20.horizontalSpace,
      CustomBTN(
          padding: 10,
          radius: 10,
          widget: Row(
            children: [
              const Text("Withdraw",
                  style: TextStyle(color: Color(0xff799299))),
              10.horizontalSpace,
              SvgPicture.asset(
                "assets/images/payment/subtract.svg",
                width: 20,
              )
            ],
          ),
          color: const Color(0xffFFF4F3),
          press: () {})
    ]);
  }
}
