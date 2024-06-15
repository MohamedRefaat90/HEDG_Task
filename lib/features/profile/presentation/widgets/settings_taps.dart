import 'package:flutter/material.dart';
import 'package:hedg_task/features/profile/presentation/widgets/tap.dart';

import '../../../../core/themes/app_colors.dart';
import '../../data/data_sources/taps_data.dart';

class SettingsTaps extends StatelessWidget {
  const SettingsTaps({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: List.generate(
            settingsTaps.length,
            (index) => Tap(
                  title: settingsTaps[index].title,
                  icon: settingsTaps[index].icon,
                )),
      ),
    );
  }
}
