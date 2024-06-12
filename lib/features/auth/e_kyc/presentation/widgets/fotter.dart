import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/app_colors.dart';

class Fotter extends StatelessWidget {
  const Fotter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        15.verticalSpace,
        const Text(
          "If you are facing any difficulties, please get in touch ",
          style: TextStyle(fontSize: 10),
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "with us on",
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Whatsapp",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                        color: AppColors.secondeyColor),
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
        10.verticalSpace,
      ],
    );
  }
}
