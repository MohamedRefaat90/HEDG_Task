import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';

class MyPensionsHeader extends StatelessWidget {
  const MyPensionsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Text(
        "My Pensions",
        style: TextStyle(
            color: AppColors.secondeyColor,
            fontWeight: FontWeight.w700,
            fontSize: 16),
      ),
      MaterialButton(
        onPressed: () {},
        minWidth: 120,
        height: 35,
        elevation: 1,
        color: const Color(0xffECEEEF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: const Text("Order", style: TextStyle(color: AppColors.black)),
      )
    ]);
  }
}
