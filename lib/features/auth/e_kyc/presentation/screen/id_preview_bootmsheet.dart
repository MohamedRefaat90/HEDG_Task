import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/core/widgets/custom_btn.dart';
import 'package:hedg_task/features/auth/e_kyc/cubit/e_kyc_cubit.dart';

import '../widgets/id_Image_preview.dart';

class IDPreviewBottomSheet extends StatelessWidget {
  const IDPreviewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 236, 234, 234),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20)
            .copyWith(top: 30, bottom: 10),
        child: Column(
          children: [
            SizedBox(
              height: 480,
              child: Card(
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Add National ID Front",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: AppColors.secondeyColor),
                        ),
                        20.verticalSpace,
                        IDImagePreview(
                            idImagePath:
                                context.read<EKycCubit>().idFront!.path),
                        30.verticalSpace,
                        IDImagePreview(
                            idImagePath:
                                context.read<EKycCubit>().idBack!.path),
                      ]),
                ),
              ),
            ),
            const Spacer(),
            CustomBTN(
              widget: const Text("Next"),
              width: double.infinity,
              color: AppColors.secondeyColor,
              press: () {
                context.read<EKycCubit>().closeBottomSheetForIDPreview();
                context.read<EKycCubit>().goToNextRegesrtrationStep(2);
              },
            )
          ],
        ),
      ),
    );
  }
}
