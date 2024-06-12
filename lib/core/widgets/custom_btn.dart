import 'package:flutter/material.dart';

class CustomBTN extends StatelessWidget {
  final Widget widget;
  final void Function()? press;
  final Color? color;
  final double? padding;
  final double? width;
  final bool isDisabled;
  final double? radius;
  const CustomBTN(
      {super.key,
      required this.widget,
      required this.press,
      this.color,
      this.padding,
      this.width,
      this.radius,
      this.isDisabled = false});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius ?? 20)),
      child: MaterialButton(
        onPressed: isDisabled ? null : press,
        padding: EdgeInsets.all(padding ?? 20),
        minWidth: width ?? 50,
        textColor: Colors.white,
        enableFeedback: true,
        disabledColor: Colors.grey,
        child: widget,
      ),
    );
  }
}
