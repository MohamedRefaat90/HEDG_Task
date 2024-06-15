import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../data/data_sources/taps_data.dart';
import 'tap.dart';

class InsightTaps extends StatelessWidget {
  const InsightTaps({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: List.generate(
              insightTaps.length,
              (index) => Tap(
                    title: insightTaps[index].title,
                    icon: insightTaps[index].icon,
                  )),
        ));
  }
}
