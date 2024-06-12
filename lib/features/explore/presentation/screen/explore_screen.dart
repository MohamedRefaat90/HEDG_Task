import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/explore/data/data_sources/plans_data.dart';

import '../../data/models/plans_explore_model.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
            shrinkWrap: true,
            itemCount: plansData.length,
            itemBuilder: (context, index) {
              PlansExploreModel plan = plansData[index];
              return SizedBox(
                width: double.infinity,
                child: Card(
                  color: plan.color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
            },
            separatorBuilder: (context, index) => 5.verticalSpace),
      ),
    );
  }
}
