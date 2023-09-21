
import 'package:flutter/material.dart';

import '../../constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    super.key,
    this.title,
    this.text,
  });
  final String? title, text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title!,
            style: const TextStyle(
              color: kTextColorWhite,
            )),
        Text(
          text!,
        )
      ],
    );
  }
}