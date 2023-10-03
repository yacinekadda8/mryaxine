import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://github.com/yacinekadda8/'); // Replace with your GitHub URL
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: const FaIcon(
                FontAwesomeIcons.github,
                color: Colors.grey,
                size: 20,
              )),
          IconButton(
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://www.linkedin.com/in/merahi-noureddine/'); // Replace with your GitHub URL
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: const FaIcon(
                FontAwesomeIcons.linkedin,
                color: Colors.grey,
                size: 20,
              )),
          IconButton(
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://www.facebook.com/yacine.casanova.10/'); // Replace with your GitHub URL
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: const FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.grey,
                size: 20,
              )),
          IconButton(
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://dribbble.com/yaxine'); // Replace with your GitHub URL
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: const FaIcon(
                FontAwesomeIcons.dribbble,
                color: Colors.grey,
                size: 20,
              )),
        ],
      ),
    );
  }
}
