import 'package:flutter_svg/flutter_svg.dart';
import 'package:hedg_task/core/constants/app_assets.dart';
import 'package:hedg_task/features/profile/data/models/tap_model.dart';

List<TapModel> bankTaps = [
  TapModel(title: "Bank Information", icon: AppAssets.bank),
  TapModel(title: "Transactions History", icon: AppAssets.history),
];
List<TapModel> insightTaps = [
  TapModel(title: "Insights And Performance", icon: AppAssets.preformance),
  TapModel(title: "HEDG Learn", icon: AppAssets.agent),
];
List<TapModel> settingsTaps = [
  TapModel(title: "Settings", icon: AppAssets.gear),
  TapModel(title: "About Us", icon: AppAssets.about),
  TapModel(title: "Terms & Conditions", icon: AppAssets.terms),
  TapModel(title: "Change Language, تغير اللغة", icon: AppAssets.dictionary),
  TapModel(title: "Support", icon: AppAssets.help),
];
