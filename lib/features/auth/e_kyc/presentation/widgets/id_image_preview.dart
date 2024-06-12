import 'dart:io';

import 'package:flutter/material.dart';

class IDImagePreview extends StatelessWidget {
  const IDImagePreview({super.key, required this.idImagePath});

  final String idImagePath;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: Image.file(
        File(idImagePath),
        fit: BoxFit.cover,
      ),
    ));
  }
}
