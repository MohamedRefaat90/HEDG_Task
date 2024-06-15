import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/home/presentation/widgets/home_appbar.dart';
import 'package:hedg_task/features/profile/presentation/widgets/bank_taps.dart';
import 'package:hedg_task/features/profile/presentation/widgets/insight_taps.dart';

import '../widgets/settings_taps.dart';
import '../widgets/user_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: homeAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(children: [
          const UserInfo(),
          15.verticalSpace,
          const BankTaps(),
          15.verticalSpace,
          const InsightTaps(),
          15.verticalSpace,
          const SettingsTaps()
        ])),
      ),
    );
  }
}
