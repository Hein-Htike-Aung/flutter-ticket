import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String text;

  const AppDoubleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.headLineStyle2,
        ),
        // InkWell / GestureDetector ares clickable widgets
        InkWell(
          onTap: () {
            debugPrint('click view all');
          },
          child: Text(
            "View all",
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
