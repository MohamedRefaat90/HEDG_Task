import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_task/core/constants/app_assets.dart';

import '../../../../core/themes/app_colors.dart';

AppBar homeAppbar() {
  return AppBar(
    title: SvgPicture.asset(
      AppAssets.homeLogo,
      width: 110,
      height: 35,
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: AppColors.secondeyColor,
            size: 25,
          ))
    ],
  );
}
