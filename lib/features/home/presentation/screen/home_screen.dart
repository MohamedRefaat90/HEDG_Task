import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:hedg_task/features/home/presentation/widgets/home_appbar.dart';
import 'package:hedg_task/features/home/presentation/widgets/mypensions_header.dart';
import 'package:hedg_task/features/home/presentation/widgets/plans_view.dart';

import '../widgets/personal_statics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const PersonalStatics(),
            10.verticalSpace,
            const MyPensionsHeader(),
            const PlansView()
          ]),
        ),
      ),
    );
  }
}
