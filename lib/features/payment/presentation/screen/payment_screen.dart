import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/home/presentation/widgets/home_appbar.dart';
import 'package:hedg_task/features/payment/presentation/widgets/activities_view.dart';
import 'package:hedg_task/features/payment/presentation/widgets/recent_activity_header.dart';

import '../widgets/activities_filters.dart';
import '../widgets/balance_info.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const BalanceInfo(),
          10.verticalSpace,
          const RecentActivityHeader(),
          5.verticalSpace,
          const ActivitiesFilters(),
          10.verticalSpace,
          const ActivitiesView()
        ]),
      )),
    );
  }
}
