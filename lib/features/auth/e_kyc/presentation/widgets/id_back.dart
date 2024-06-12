import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/features/auth/e_kyc/cubit/e_kyc_cubit.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/upload_id_back_card.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/custom_btn.dart';

class IDBack extends StatelessWidget {
  const IDBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(bottom: 10),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Add National ID Back",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: AppColors.secondeyColor),
            ),
          ),
          15.verticalSpace,
          const UploadIDBackCard(
              title: "ID Card (Back)",
              desc:
                  "Please take a photo to your ID Back, Make sure it’s clear"),
          15.verticalSpace,
          const Text(
            "If you are facing any difficulties, please get in touch ",
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "with us on",
                style: TextStyle(fontSize: 10),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Whatsapp",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w900,
                          color: AppColors.secondeyColor),
                      textAlign: TextAlign.center,
                    )),
              ),
            ],
          ),
          10.verticalSpace,
          BlocBuilder<EKycCubit, EKycState>(
            builder: (context, state) {
              return CustomBTN(
                widget: const Text("Save",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                width: double.infinity,
                padding: 17,
                color: context.read<EKycCubit>().idBack == null
                    ? AppColors.secondeyColor.withOpacity(0.6)
                    : AppColors.secondeyColor,
                press: () {
                  context.read<EKycCubit>().idImagesChecker(
                      context: context,
                      idImage: context.read<EKycCubit>().idBack);
                  // context.pushNamed(AppRoutes.idPreview);
                },
              );
            },
          )
        ]),
      ),
    );
  }
}
