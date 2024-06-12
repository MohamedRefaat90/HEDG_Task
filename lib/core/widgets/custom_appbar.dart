import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar customAppbar(BuildContext context) {
  return AppBar(
      leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios)));
}
