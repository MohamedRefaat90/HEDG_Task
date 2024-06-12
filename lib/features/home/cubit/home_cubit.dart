import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hedg_task/features/explore/presentation/screen/explore_screen.dart';
import 'package:hedg_task/features/home/presentation/screen/home_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  int currentIndex = 0;

  List<Widget> homeNavigationScreens = [
    const HomeScreen(),
    Container(),
    const ExploreScreen(),
    Container(),
  ];

  HomeCubit() : super(HomeInitial());

  changeHomeNavigationIndex(int index) {
    currentIndex = index;
    emit(RefreshHomeNavigationbar());
  }
}
