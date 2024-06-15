import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/themes/app_colors.dart';

class Tap extends StatelessWidget {
  final String title;
  final String icon;
  const Tap({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      leading:
          SvgPicture.asset(icon, width: 25, color: AppColors.secondeyColor),
      title: Text(title,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.secondeyColor)),
      trailing: IconButton(
          onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
    );
  }
}
