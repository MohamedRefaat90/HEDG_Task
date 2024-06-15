import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/payment/presentation/widgets/balance_actions.dart';
import 'package:hedg_task/features/payment/presentation/widgets/balance_amount.dart';

import 'balance_visability.dart';

class BalanceInfo extends StatelessWidget {
  const BalanceInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const BalanceVisability(),
            20.verticalSpace,
            const BalanceAmount(),
            10.verticalSpace,
            const BalanceActions(),
            20.verticalSpace,
          ]),
        ));
  }
}
