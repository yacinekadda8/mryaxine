import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../core/utils/my_styles.dart';

class CvButton extends StatelessWidget {
  const CvButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: FittedBox(
          child: Row(
            children: [
              Text("Dawnload CV",
                  style: MyStyles.textStyle22.copyWith(
                    color: kbodyTextColor,
                  )),
              const SizedBox(width: defaultPadding / 2),
              const Icon(Icons.description,
                  color: kbodyTextColor),
              const Icon(Icons.download_rounded,
                  color: kbodyTextColor)
            ],
          ),
        ));
  }
}
