import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/features/home/data/data_sources/plans_data.dart';

import '../../../../core/themes/app_colors.dart';
import '../../data/models/plane_model.dart';

class PlansView extends StatelessWidget {
  const PlansView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: plans.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          PlanModel plan = plans[index];
          return Card(
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.asset(
                    plan.img,
                  ),
                  10.horizontalSpace,
                  Text(
                    plan.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        color: AppColors.secondeyColor,
                        fontSize: 16),
                  ),
                  const Spacer(),
                  Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("${plan.amount} EGP",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.secondeyColor,
                            fontSize: 16)),
                    5.verticalSpace,
                    Container(
                      width: 70,
                      height: 25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: index == 1
                              ? const Color(0xffFEEFEB)
                              : const Color(0xffE6F9EE),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "${plan.profit} EGP",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: index == 1
                                ? const Color(0xffF05830)
                                : AppColors.primaryColor),
                      ),
                    )
                  ])
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => 5.verticalSpace);
  }
}
