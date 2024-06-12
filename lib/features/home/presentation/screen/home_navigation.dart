import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hedg_task/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:hedg_task/features/home/cubit/home_cubit.dart';
import 'package:hedg_task/features/home/presentation/widgets/home_appbar.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) => context
              .read<HomeCubit>()
              .homeNavigationScreens[context.read<HomeCubit>().currentIndex]),
    );
  }
}
