import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';

class BalanceAmount extends StatelessWidget {
  const BalanceAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(children: [
        TextSpan(
            text: "500.00 ",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                color: AppColors.secondeyColor,
                fontSize: 40)),
        TextSpan(
            text: "EGP",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                color: AppColors.secondeyColor,
                fontSize: 14)),
      ]),
    );
  }
}
