import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';
import 'package:flutter_portofolio/models/project.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        const GridViewBuilder(),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: getValueForScreenType<int>(
          context: context,
          mobile: 1,
          tablet: 2,
          desktop: 3,
        ),
        childAspectRatio: getValueForScreenType<double>(
          context: context,
          mobile: 1.6,
          tablet: 1.6,
          desktop: 1.5,
        ),
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ProjectCard(
          project: projects[index],
        );
      },
    );
  }
}
