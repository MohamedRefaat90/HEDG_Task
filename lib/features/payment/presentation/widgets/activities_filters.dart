import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_chip.dart';

class ActivitiesFilters extends StatelessWidget {
  const ActivitiesFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> filters = [
      "All",
      "Funding",
      "Investing",
      "other",
    ];

    return SizedBox(
      height: 50,
      child: ListView.separated(
        itemCount: filters.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CustomChip(title: filters[index], index: index, press: () {}),
        separatorBuilder: (context, index) => 5.horizontalSpace,
      ),
    );
  }
}
