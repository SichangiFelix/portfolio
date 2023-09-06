import 'package:flutter/material.dart';
import 'package:portfolio/data/projects_data.dart';
import 'package:portfolio/features/home/projects_page.dart';
import 'package:portfolio/features/home/skills_page.dart';

import '../../constants/colors.dart';
import '../../data/skills_data.dart';
import 'achievements_page.dart';
import 'certifications_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            width: screenWidth,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: screenHeight * 0.02,
            ),
            height: screenHeight * 0.96,
            width: screenWidth * 0.97,
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.02, horizontal: screenWidth * 0.03),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.blue,
                border: Border.all(
                  color: AppColors.borderBlue,
                  width: 2,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SICHANGI",
                      style: TextStyle(
                        color: AppColors.brown,
                        fontSize: 24,
                        fontFamily: "JuliusSansOne",
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.3,
                    ),
                    const Text(
                      "Home",
                      style: kHeaderStyle,
                    ),
                    const Text(
                      "Skills",
                      style: kHeaderStyle,
                    ),
                    const Text(
                      "Experience",
                      style: kHeaderStyle,
                    ),
                    const Text(
                      "Projects",
                      style: kHeaderStyle,
                    ),
                    const Text(
                      "Contacts",
                      style: kHeaderStyle,
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 2,
                        color: AppColors.brown,
                      )),
                      child: const Text(
                        "Reach out",
                        style: kHeaderStyle,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi! I am \nFelix Sichangi",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            fontFamily: "Lalezar",
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.07,
                        ),
                        const Text(
                          "I am a software engineer building applications using the flutter framework \n\nI am a certified Oracle Cloud Infrastructure Associate. \n\nI am learning backend engineering, cloud computing and DevOps \n\nI love cars, motorsports, rugby, photography and travelling",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: screenHeight * 0.32,
                          width: screenWidth * 0.3,
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02,
                              horizontal: screenWidth * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(screenWidth * 0.02),
                                bottomRight:
                                    Radius.circular(screenWidth * 0.02)),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: const [0.1, 1.0],
                              colors: [
                                AppColors.brown,
                                AppColors.blue,
                              ],
                            ),
                            color: AppColors.brown,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: SizedBox(
                              height: screenHeight * 0.32,
                              width: screenWidth * 0.3,
                              child: Image.asset(
                                "assets/images/profile.png",
                                height: screenHeight * 0.3,
                                width: screenWidth * 0.4,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                    labelStyle: const TextStyle(
                      fontFamily: "Lalezar",
                      fontSize: 22,
                    ),
                    tabs: const [
                      Tab(text: 'Skills'),
                      Tab(text: 'Projects'),
                      Tab(text: 'Certifications'),
                      Tab(text: 'Achievements'),
                    ],
                    onTap: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    indicatorColor: AppColors.brown,
                    labelColor: AppColors.brown,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        SkillsPage(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth),
                        ProjectsPage(screenWidth: screenWidth),
                        CertificationsPage(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth),
                        AchievementsPage(screenHeight: screenHeight),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.02),
                  child: const Text(
                    "Work Experience",
                    style: TextStyle(
                      fontFamily: "Lalezar",
                      fontSize: 22,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.02,
                              vertical: screenHeight * 0.03),
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: screenWidth * 0.015,
                          ),
                          width: screenWidth * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.blue,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 10, // Blur radius
                                offset: const Offset(
                                    2, 4), // Offset in the X, Y direction
                              ),
                            ],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Jumuisha Limited",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  "Software developer intern",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "July 2022 - September 2022",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.brown,
                                  ),
                                ),
                              ]),
                        );
                      }),
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.02),
                  child: const Text(
                    "Education",
                    style: TextStyle(
                      fontFamily: "Lalezar",
                      fontSize: 22,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.02,
                              vertical: screenHeight * 0.03),
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.015,
                            horizontal: screenWidth * 0.015,
                          ),
                          width: screenWidth * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.lightBrown,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 10, // Blur radius
                                offset: const Offset(
                                    2, 4), // Offset in the X, Y direction
                              ),
                            ],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/star.png",
                                      width: 80,
                                    ),
                                    const Text(
                                      "Kenyatta University",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                const Expanded(child: SizedBox.shrink()),
                                const Text(
                                  "Bsc. Computer Science",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "GPA - 66.0",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.brown,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Second class honors - upper division",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.brown,
                                  ),
                                ),
                                const Expanded(child: SizedBox.shrink()),
                                Text(
                                  "August 2019 - July 2024",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.brown,
                                  ),
                                ),
                              ]),
                        );
                      }),
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.02),
                  child: const Text(
                    "Referees",
                    style: TextStyle(
                      fontFamily: "Lalezar",
                      fontSize: 22,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.02,
                              vertical: screenHeight * 0.03),
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.015,
                            horizontal: screenWidth * 0.015,
                          ),
                          width: screenWidth * 0.2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/profile_placeholder.png",
                                  height: 60,
                                ),
                                const Text(
                                  "Bill Jux",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                const Text(
                                  "Software engineer",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                const Text(
                                  "2447213324235",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ]),
                        );
                      }),
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.4,
            child: Stack(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0.7, 1],
                      colors: [
                        AppColors.blue,
                        AppColors.scaffoldColor,
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Expanded(child: SizedBox.shrink()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contact me",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "+25473243959843",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "sichangi24@gmail.com",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.2,),
                        Column(
                          children: [
                            Text(
                              "Lets connect",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/linkedin.png",
                                  width: 28,
                                ),
                                SizedBox(width: 8,),
                                Image.asset("assets/images/twitter.png", width: 28),
                                SizedBox(
                                  width: 8,
                                ),
                                Image.asset("assets/images/github.png", width: 28),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox.shrink()),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

const kHeaderStyle = TextStyle(
  color: Colors.black,
  fontSize: 16,
);
