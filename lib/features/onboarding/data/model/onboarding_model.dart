import 'package:flutter/material.dart';

class OnboardingModel {
  final String img;
  final String shape;
  final AlignmentGeometry shapeAlignment;
  final String title;
  final String desc;

  OnboardingModel(
      {required this.img,
      required this.shape,
      required this.shapeAlignment,
      required this.title,
      required this.desc});
}
