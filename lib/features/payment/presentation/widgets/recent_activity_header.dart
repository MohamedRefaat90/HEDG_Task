import 'package:flutter/material.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/core/widgets/custom_btn.dart';

class RecentActivityHeader extends StatelessWidget {
  const RecentActivityHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Text("Recent Activities",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              color: AppColors.secondeyColor,
              fontSize: 17)),
      SizedBox(
        height: 35,
        child: CustomBTN(
            padding: 10,
            widget: const Text(
              "View Requests",
              style: TextStyle(
                  color: Color.fromARGB(255, 164, 164, 164), fontSize: 12),
            ),
            color: const Color.fromARGB(255, 220, 221, 222),
            press: () {}),
      )
    ]);
  }
}
