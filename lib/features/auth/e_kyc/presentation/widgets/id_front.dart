import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../cubit/e_kyc_cubit.dart';
import 'fotter.dart';
import 'upload_id_front_card.dart';

class IDFront extends StatelessWidget {
  const IDFront({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(bottom: 10),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Add National ID Front",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: AppColors.secondeyColor),
            ),
          ),
          15.verticalSpace,
          const UploadIDFrontCard(
              title: "ID Card (Front)",
              desc:
                  "Please take a photo to your ID Front, Make sure it’s clear"),
          const Fotter(),
          BlocBuilder<EKycCubit, EKycState>(
            builder: (context, state) {
              return CustomBTN(
                  widget: const Text("Save",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  width: double.infinity,
                  padding: 17,
                  color: context.read<EKycCubit>().idFront == null
                      ? AppColors.secondeyColor.withOpacity(0.6)
                      : AppColors.secondeyColor,
                  press: () => context.read<EKycCubit>().idImagesChecker(
                      context: context,
                      idImage: context.read<EKycCubit>().idFront,
                      nextStep: 1));
            },
          ),
        ]),
      ),
    );
  }
}
