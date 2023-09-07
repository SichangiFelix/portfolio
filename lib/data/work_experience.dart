import 'package:flutter/material.dart';

class WorkExperience{

  String companyName;
  String role;
  String timeFrame;

  WorkExperience({
    required this.companyName,
    required this.role,
    required this.timeFrame,
});

}

class WorkExperiences{

List<WorkExperience> workExperiences = [
  WorkExperience(companyName: "Jumuisha Limited", role: "Software developer intern", timeFrame: "July 2022 - September 2022"),
];

}