import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';

class CustomChip extends StatefulWidget {
  final String title;
  final Function()? press;
  final int index;
  const CustomChip({
    super.key,
    required this.title,
    required this.press,
    required this.index,
  });

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  int activeFilter = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      child: Chip(
        label: Text(widget.title),
        color: WidgetStatePropertyAll(activeFilter == widget.index
            ? const Color(0xffE1E5E8)
            : const Color(0xffFAFAFA)),
        labelPadding: const EdgeInsets.symmetric(horizontal: 20),
        side: BorderSide.none,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        elevation: 5,
        shadowColor: AppColors.black,
      ),
    );
  }
}
