// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'cv_btn.dart';
import 'education.dart';
import 'info_area_section.dart';
import 'more_skills.dart';
import 'my_info.dart';
import 'skills.dart';
import 'socialmedia.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  InfoAreaSection(),
                  Divider(),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Divider(),
                  MoreSkills(),
                  Divider(),
                  Education(),
                  Divider(),
                  SizedBox(height: defaultPadding / 2),
                  CvButton(),
                  SizedBox(height: defaultPadding),
                  SocialMediaSection()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
