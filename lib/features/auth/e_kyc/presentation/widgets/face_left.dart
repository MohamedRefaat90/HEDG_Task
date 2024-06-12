import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_routes.dart';
import 'package:hedg_task/features/auth/e_kyc/cubit/e_kyc_cubit.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/fotter.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/look_to_camera.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/custom_btn.dart';

class FaceLeft extends StatelessWidget {
  const FaceLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
      child: SingleChildScrollView(
        child: Column(children: [
          const LookToCamera(),
          const Fotter(),
          CustomBTN(
              widget: const Text("Next",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              width: double.infinity,
              padding: 17,
              color: AppColors.secondeyColor,
              press: () => context.goNamed(AppRoutes.penndingApproval)),
        ]),
      ),
    );
  }
}
