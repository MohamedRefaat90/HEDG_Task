import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/features/explore/data/data_sources/plans_data.dart';

import '../../data/models/plans_explore_model.dart';
import '../widgets/plane_card.dart';

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
              return PlaneCard(plan: plan);
            },
            separatorBuilder: (context, index) => 5.verticalSpace),
      ),
    );
  }
}
