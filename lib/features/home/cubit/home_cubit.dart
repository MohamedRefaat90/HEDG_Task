import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hedg_task/features/explore/presentation/screen/explore_screen.dart';
import 'package:hedg_task/features/home/presentation/screen/home_screen.dart';
import 'package:hedg_task/features/payment/presentation/screen/payment_screen.dart';
import 'package:hedg_task/features/profile/presentation/screen/profile_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  int currentIndex = 0;

  List<Widget> homeNavigationScreens = const [
    HomeScreen(),
    PaymentScreen(),
    ExploreScreen(),
    ProfileScreen()
  ];

  HomeCubit() : super(HomeInitial());

  changeHomeNavigationIndex(int index) {
    currentIndex = index;
    emit(RefreshHomeNavigationbar());
  }
}
