import 'package:flutter/material.dart';
import 'package:portfolio/data/projects_data.dart';
import 'package:portfolio/features/home/projects_page.dart';
import 'package:portfolio/features/home/skills_page.dart';

import '../../constants/colors.dart';
import '../../data/skills_data.dart';

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
                        Container(
                          color: Colors.blue,
                          child: const Center(child: Text('Page 3')),
                        ),
                        Container(
                          color: Colors.orange,
                          child: const Center(child: Text('Page 4')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
