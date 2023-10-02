import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/models/project.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: getValueForScreenType<int>(
              context: context,
              mobile: 2,
              tablet: 1,
              desktop: 2,
            ),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: getValueForScreenType<double>(
                context: context,
                mobile: 12,
                tablet: 12,
                desktop: 14,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 3),
          Text(project.description!,
              maxLines: getValueForScreenType<int>(
                context: context,
                mobile: 3,
                tablet: 3,
                desktop: 3,
              ),
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: TextStyle(
                height: 1.5,
                fontSize: getValueForScreenType<double>(
                  context: context,
                  mobile: 12,
                  tablet: 12,
                  desktop: 14,
                ),
              )),
          const Spacer(),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                    EdgeInsets.zero),
              ),
              child: const Text(
                'Read More...',
                style: TextStyle(color: kprimaryColor),
              ))
        ],
      ),
    );
  }
}
