import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/github.svg")),
          IconButton(
              onPressed: () {},
              icon:
                  SvgPicture.asset("assets/icons/linkedin.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/twitter.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/dribble.svg")),
        ],
      ),
    );
  }
}
