import 'package:flutter/material.dart';

class Education {
  String institutionName;
  String level;
  String credentialEarned;
  String timeLine;
  String grade;
  String major;
  String logo;


  Education({
    required this.institutionName,
    required this.level,
    required this.credentialEarned,
    required this.timeLine,
    required this.grade,
    required this.major,
    required this.logo,
  });
}

class LearningPath {
  List<Education> institutions = [
      Education(logo: "assets/images/KU_logo.png",institutionName: "Kenyatta University", level: "Undergraduate", credentialEarned: "Bachelor's degree", timeLine: "August 2019 - June 2024", grade: "Second class Upper division", major: "Computer science"),
      Education(
        logo: "assets/images/FSK_logo.png",
        institutionName: "Friends School Kamusinga", level: "High School", credentialEarned: "KCSE", timeLine: "February 2015 - November 2018", grade: "A-", major: "High School diploma"),
  ];
}
