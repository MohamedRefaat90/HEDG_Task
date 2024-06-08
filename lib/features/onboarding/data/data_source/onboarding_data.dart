import 'package:flutter/material.dart';
import 'package:hedg_task/features/onboarding/data/model/onboarding_model.dart';

List<OnboardingModel> onboardingData = [
  OnboardingModel(
      img: "assets/images/onboarding/onboarding1.png",
      shape: "assets/images/onboarding/shape1.svg",
      shapeAlignment: Alignment.topRight,
      title: "Shape Your Financial Future",
      desc:
          "invest your money By Starting With HEDG, and secure financial freedom"),
  OnboardingModel(
      img: "assets/images/onboarding/onboarding2.png",
      shape: "assets/images/onboarding/shape2.svg",
      shapeAlignment: Alignment.topCenter,
      title: "Track Your Investments",
      desc: "see your return on investments in the selected plans"),
  OnboardingModel(
      img: "assets/images/onboarding/onboarding3.png",
      shape: "assets/images/onboarding/shape3.svg",
      shapeAlignment: Alignment.topLeft,
      title: "Calculate Before Investing",
      desc:
          "calculate your potential growth to choose the perfect option for you "),
];
