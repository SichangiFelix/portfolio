import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../data/projects_data.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: Projects().projects.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.015,
                  vertical: screenWidth * 0.01),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: screenWidth * 0.3,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: Offset(2, 4), // Offset in the X, Y direction
                  ),
                ],
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Projects().projects[index].title,
                    style: TextStyle(
                      color: AppColors.brown,
                    ),
                  ),
                  Text(Projects().projects[index].description),
                  Text(
                    "Technologies used",
                    style: TextStyle(
                      color: AppColors.brown,
                    ),
                  ),
                  Text(Projects().projects[index].techStack),
                  Text(
                    "Skills gained",
                    style: TextStyle(
                      color: AppColors.brown,
                    ),
                  ),
                  Text(Projects().projects[index].skillsGained),
                ],
              ),
            );
          }),
    );
  }
}
