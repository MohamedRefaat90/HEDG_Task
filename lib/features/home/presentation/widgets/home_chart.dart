import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_task/core/constants/app_assets.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../data/models/chart_data.dart';

class HomeChart extends StatefulWidget {
  const HomeChart({super.key});

  @override
  State<HomeChart> createState() => _HomeChartState();
}

class _HomeChartState extends State<HomeChart> {
  late List<ChartDataModel> data;
  late TooltipBehavior _tooltip;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SfCircularChart(tooltipBehavior: _tooltip, palette: const [
        AppColors.primaryColor,
        Color(0xffDAEEF8)
      ], annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(
            widget: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('60,500 EGP',
                style: TextStyle(
                    color: AppColors.secondeyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700)),
            10.verticalSpace,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppAssets.arrowUp, height: 8),
                5.horizontalSpace,
                const Text('11,500 EGP',
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700)),
              ],
            ),
          ],
        ))
      ], series: <CircularSeries<ChartDataModel, String>>[
        DoughnutSeries<ChartDataModel, String>(
            innerRadius: "65",
            radius: "80",
            dataSource: data,
            legendIconType: LegendIconType.circle,
            xValueMapper: (ChartDataModel data, _) => data.x,
            yValueMapper: (ChartDataModel data, _) => data.y,
            name: 'Gold')
      ]),
    );
  }

  @override
  void initState() {
    data = [
      ChartDataModel('David', 25),
      ChartDataModel('David', 75),
    ];
    _tooltip = TooltipBehavior(enable: false);
    super.initState();
  }
}
