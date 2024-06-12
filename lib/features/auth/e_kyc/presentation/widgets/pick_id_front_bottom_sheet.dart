// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg_task/features/auth/e_kyc/cubit/e_kyc_cubit.dart';
import 'package:image_picker/image_picker.dart';

import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/core/widgets/custom_btn.dart';

class PickIDFrontBottomSheet extends StatelessWidget {
  const PickIDFrontBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();
    return Container(
      height: 170,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          CustomBTN(
              padding: 10,
              widget: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.picture_in_picture,
                      color: AppColors.secondeyColor),
                  10.horizontalSpace,
                  const Text("Pick From Gallery",
                      style: TextStyle(color: AppColors.secondeyColor)),
                ],
              ),
              color: AppColors.white,
              press: () async {
                context.read<EKycCubit>().idFront =
                    await picker.pickImage(source: ImageSource.gallery);
                if (context.mounted) {
                  if (context.read<EKycCubit>().idFront != null) {
                    context.read<EKycCubit>().closeIDPickerBottomSheet();
                  }
                }
              }),
          20.verticalSpace,
          CustomBTN(
              padding: 10,
              widget: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.camera_alt_outlined,
                      color: AppColors.secondeyColor),
                  10.horizontalSpace,
                  const Text("Pick From Camera",
                      style: TextStyle(color: AppColors.secondeyColor)),
                ],
              ),
              color: AppColors.white,
              press: () async {
                context.read<EKycCubit>().idFront =
                    await picker.pickImage(source: ImageSource.camera);

                if (context.mounted) {
                  if (context.read<EKycCubit>().idFront != null) {}
                  context.read<EKycCubit>().closeIDPickerBottomSheet();
                }
              })
        ]),
      ),
    );
  }
}
