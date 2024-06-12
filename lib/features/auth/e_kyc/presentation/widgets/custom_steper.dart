import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/auth/e_kyc/cubit/e_kyc_cubit.dart';

import '../../data/data_sources/local_data/regestration_steps.dart';

class CustomSteper extends StatefulWidget {
  const CustomSteper({super.key});

  @override
  State<CustomSteper> createState() => _CustomSteperState();
}

class _CustomSteperState extends State<CustomSteper> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EKycCubit, EKycState>(
      builder: (context, state) {
        return SizedBox(
          height: 75,
          child: EasyStepper(
            activeStep: context.read<EKycCubit>().activeStep,
            stepShape: StepShape.circle,
            defaultStepBorderType: BorderType.normal,
            stepBorderRadius: 15,
            borderThickness: 2,
            padding: const EdgeInsets.all(20),
            stepRadius: 15,
            finishedStepBorderColor: AppColors.primaryColor,
            finishedStepTextColor: Colors.deepOrange,
            finishedStepBackgroundColor: AppColors.primaryColor,
            unreachedStepBackgroundColor: AppColors.white,
            unreachedStepTextColor: AppColors.black,
            activeStepBackgroundColor: AppColors.white,
            activeStepIconColor: Colors.deepOrange,
            showLoadingAnimation: false,
            lineStyle: const LineStyle(
                lineType: LineType.normal, lineLength: 24, lineThickness: 2),
            steps: List.generate(
              regestrationStep.length,
              (index) => EasyStep(
                customStep: Text(
                  regestrationStep[index].num,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: context.read<EKycCubit>().activeStep > index
                          ? AppColors.white
                          : AppColors.black),
                ),
                customTitle: Text(regestrationStep[index].title,
                    style: const TextStyle(fontSize: 10),
                    textAlign: TextAlign.center),
              ),
            ),
            enableStepTapping: false,
            onStepReached: (index) =>
                setState(() => context.read<EKycCubit>().activeStep = index),
          ),
        );
      },
    );
  }
}
