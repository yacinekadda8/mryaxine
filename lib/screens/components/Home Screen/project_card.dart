
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:flutter_portofolio/core/utils/my_styles.dart';
import 'package:flutter_portofolio/models/project.dart';

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
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: MyStyles.textStyle18.copyWith(color: Colors.white),
          ),
          const SizedBox(height: defaultPadding),
          Text(
            project.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: MyStyles.textStyle14.copyWith(height: 1.5),
          ),
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
