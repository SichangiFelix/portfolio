import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../data/skills_data.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 20,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(
                vertical: screenHeight * 0.08, horizontal: screenWidth * 0.03),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:
                  (index % 2) == 0 ? AppColors.lightBrown : AppColors.lightBlue,
            ),
            child: Center(
              child: Text(
                skills[index],
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
