import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CustomTransition extends Page {
  final Widget child;
  final PageTransitionType? transitionType;

  CustomTransition({required this.child, this.transitionType})
      : super(key: ValueKey(child));

  @override
  Route createRoute(BuildContext context) {
    return PageTransition(
        type: transitionType ?? PageTransitionType.rightToLeft,
        child: child,
        settings: this);
  }
}
