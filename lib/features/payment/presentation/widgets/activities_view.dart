import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/payment/data/data_sources/avtivities_data.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: activities.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Card(
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  leading: SvgPicture.asset(activities[index].icon, height: 20),
                  contentPadding: const EdgeInsets.all(10),
                  title: Text(activities[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.black)),
                  subtitle: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(activities[index].date,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xff6E838F))),
                      10.horizontalSpace,
                      Text(activities[index].time,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xff6E838F))),
                    ],
                  ),
                  trailing: Text(activities[index].amount,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.black)),
                ),
              ),
            ),
        separatorBuilder: (context, index) => 5.verticalSpace);
  }
}
