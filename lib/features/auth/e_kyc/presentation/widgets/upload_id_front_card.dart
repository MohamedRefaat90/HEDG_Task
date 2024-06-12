// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/auth/e_kyc/cubit/e_kyc_cubit.dart';

class UploadIDFrontCard extends StatelessWidget {
  final String title;
  final String desc;
  const UploadIDFrontCard({
    super.key,
    required this.title,
    required this.desc,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 7,
        shadowColor: AppColors.black,
        child: SizedBox(
          width: 300.w,
          height: 320.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18)),
                10.verticalSpace,
                SizedBox(
                  width: 190,
                  child: Text(desc,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                          color: Color.fromARGB(136, 31, 31, 65))),
                ),
                20.verticalSpace,
                DottedBorder(
                  strokeWidth: 1,
                  color: const Color.fromARGB(69, 16, 40, 74),
                  strokeCap: StrokeCap.butt,
                  dashPattern: const [15, 15],
                  child: SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: IconButton(
                        onPressed: () =>
                            context.read<EKycCubit>().pickIDFront(context),
                        icon: const Icon(Icons.add,
                            color: Color.fromARGB(83, 46, 46, 118), size: 60)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
