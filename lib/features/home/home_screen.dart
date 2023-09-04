import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth,
          ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: screenHeight * 0.02,
          ),
          height: screenHeight * 0.96,
          width: screenWidth * 0.97,
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.03),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.blue,
            border: Border.all(
              color: AppColors.borderBlue,
              width: 2,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("SICHANGI",
                    style: TextStyle(
                      color: AppColors.brown,
                      fontSize: 24,
                      fontFamily: "JuliusSansOne",
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.3,),
                  const Text("Home",
                    style: kHeaderStyle,
                  ),
                  const Text("Skills",
                    style: kHeaderStyle,
                  ),
                  const Text("Experience",
                    style: kHeaderStyle,
                  ),
                  const Text("Projects",
                    style: kHeaderStyle,
                  ),
                  const Text("Contacts",
                    style: kHeaderStyle,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: AppColors.brown,

                      )
                    ),
                    child: const Text("Reach out",
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
                      const Text("Hi! I am \nFelix Sichangi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          fontFamily: "Lalezar",
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.07,
                      ),
                      const Text("I am a software engineer building applications using the flutter framework \n\nI am a certified Oracle Cloud Infrastructure Associate. \n\nI am learning backend engineering, cloud computing and DevOps \n\nI love cars, motorsports, rugby, photography and travelling",
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
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(screenWidth *0.13), bottomRight: Radius.circular(screenWidth * 0.13)),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [
                                0.1,
                                1.0
                              ],
                                colors: [
                                  AppColors.brown,
                                  AppColors.blue,
                                ],
                              ),
                            color: AppColors.brown,
                          ),
                      ),
                      Image.asset("assets/images/profile.png"),
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
      ]),
    );
  }
}

const kHeaderStyle = TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    );