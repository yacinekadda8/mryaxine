import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    text: "Algeria",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Saida",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "25",
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Skills",
                      style: MyStyles.textStyle18.copyWith(
                        color: kTextColorWhite,
                      ),
                    ),
                  ),
                  CircularProgressIndicator(
                    value: 0.8,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
