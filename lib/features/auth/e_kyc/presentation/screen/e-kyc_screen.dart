import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hedg_task/features/auth/e_kyc/cubit/e_kyc_cubit.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/widgets/ekyc_appbar.dart';

import '../widgets/custom_steper.dart';

class EKYCScreen extends StatelessWidget {
  const EKYCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EKycCubit, EKycState>(
      builder: (context, state) {
        return Scaffold(
          key: context.read<EKycCubit>().scaffoldKey,
          backgroundColor: const Color.fromARGB(235, 236, 234, 234),
          appBar: !context.read<EKycCubit>().isBottomSheetOpen
              ? ekycAppbar()
              : null,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSteper(),
              Expanded(
                child: PageView.builder(
                    controller: context.read<EKycCubit>().pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount:
                        context.read<EKycCubit>().regesrtrationSteps.length,
                    itemBuilder: (context, index) =>
                        context.read<EKycCubit>().regesrtrationSteps[index]),
              ),
            ],
          ),
        );
      },
    );
  }
}
