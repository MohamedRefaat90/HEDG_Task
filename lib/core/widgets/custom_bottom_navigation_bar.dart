import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/home/cubit/home_cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BottomNavigationBar(
            currentIndex: context.read<HomeCubit>().currentIndex,
            onTap: (value) =>
                context.read<HomeCubit>().changeHomeNavigationIndex(value),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.secondeyColor,
            unselectedItemColor: const Color.fromARGB(255, 189, 199, 204),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: "Wallet"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore), label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]);
      },
    );
  }
}
