import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

import '../../data/models/plans_explore_model.dart';

class PlaneCard extends StatelessWidget {
  const PlaneCard({super.key, required this.plan});

  final PlansExploreModel plan;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: plan.color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              flex: 3,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(plan.title,
                        style: const TextStyle(
                            color: AppColors.secondeyColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 16)),
                    10.verticalSpace,
                    Text(plan.desc,
                        style: const TextStyle(
                            color: AppColors.secondeyColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ]),
            ),
            Image.asset(plan.img)
          ]),
        ),
      ),
    );
  }
}
