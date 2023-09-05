import 'package:flutter/material.dart';

class AchievementsPage extends StatelessWidget {
  const AchievementsPage({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "assets/images/star.png",
              height: 100,
              width: 100,
            )),
        SizedBox(
          height: screenHeight * 0.1,
        ),
        const Text(
            "Designed and implemented a dynamic UI for a finance management app using Flutter, resulting in a 30% increase in user engagement due to its intuitive and visually appealing interface.\n\n"
            "Optimized the performance of a complex social networking app by identifying and resolving key bottlenecks in the Flutter codebase, leading to a 40% reduction in app loading times and an enhanced user experience.\n\n"
            "Led a cross-functional team of designers and developers in the successful delivery of a healthcare telemedicine app, leveraging Flutter's capabilities to ensure consistent functionality across both iOS and Android platforms.\n\n"
            "Integrated third-party APIs seamlessly into a travel booking app, enabling real-time flight and hotel information updates, and receiving praise from users for the app's reliability and up-to-date content.\n\n"
            "Contributed to an open-source Flutter project by developing custom widgets and enhancing overall app performance, earning recognition from the community and increasing the project's GitHub stars by 300% within three months.\n\n"),
        SizedBox(
          height: screenHeight * 0.05,
        ),
      ]),
    );
  }
}
