
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';
import 'package:flutter_portofolio/models/project.dart';

import 'project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: MyStyles.textStyle24
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
       const SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: projects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ProjectCard(
              project: projects[index],
            );
          },
        ),
      ],
    );
  }
}
