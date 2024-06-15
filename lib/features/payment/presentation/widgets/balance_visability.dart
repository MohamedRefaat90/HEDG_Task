import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';

class BalanceVisability extends StatelessWidget {
  const BalanceVisability({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 223, 253, 246),
            borderRadius: BorderRadius.circular(10)),
        child: IconButton(
            icon: const Icon(Icons.visibility_off),
            onPressed: () {},
            color: AppColors.primaryColor),
      )
    ]);
  }
}
