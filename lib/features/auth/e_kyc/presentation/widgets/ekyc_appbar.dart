import 'package:flutter/material.dart';
import 'package:hedg_task/core/constants/app_assets.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

AppBar ekycAppbar() {
  return AppBar(
      title: Image.asset(AppAssets.greyLogo, height: 50, width: 150),
      centerTitle: true,
      toolbarHeight: 60,
      backgroundColor: AppColors.white);
}
