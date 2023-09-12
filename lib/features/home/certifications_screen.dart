import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CertificationsPage extends StatelessWidget {
  const CertificationsPage({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                height: screenHeight * 0.3,
                width: screenWidth * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset:
                          const Offset(2, 4), // Offset in the X, Y direction
                    ),
                  ],
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("OCI Foundations Associate"),
                          Text("Oracle"),
                        ],
                      ),
                      Text(
                          "This is to certify that I am an Oracle cloud infrastructure foundations associate"),
                      Text("August 2023 - August 2025"),
                    ]),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                height: screenHeight * 0.3,
                width: screenWidth * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset:
                          const Offset(2, 4), // Offset in the X, Y direction
                    ),
                  ],
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Flutter development bootcamp"),
                          Text("Udemy"),
                        ],
                      ),
                      Text(
                          "This is to certify that I completed the Flutter development bootcamp by Doctor Angela Yu"),
                      Text("August 2023 - August 2025"),
                    ]),
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.symmetric(
          //         vertical: 10,
          //         horizontal: 10,
          //       ),
          //       height: screenHeight * 0.3,
          //       width: screenWidth * 0.3,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: AppColors.blue,
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.black.withOpacity(0.2), // Shadow color
          //             spreadRadius: 2, // Spread radius
          //             blurRadius: 10, // Blur radius
          //             offset:
          //                 const Offset(2, 4), // Offset in the X, Y direction
          //           ),
          //         ],
          //       ),
          //       child: const Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text("OCI Foundations Associate"),
          //                 Text("Oracle"),
          //               ],
          //             ),
          //             Text(
          //                 "This is to certify that I am an Oracle cloud infrastructure foundations associate"),
          //             Text("August 2023 - August 2025"),
          //           ]),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.symmetric(
          //         vertical: 10,
          //         horizontal: 10,
          //       ),
          //       height: screenHeight * 0.3,
          //       width: screenWidth * 0.3,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: AppColors.blue,
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.black.withOpacity(0.2), // Shadow color
          //             spreadRadius: 2, // Spread radius
          //             blurRadius: 10, // Blur radius
          //             offset:
          //                 const Offset(2, 4), // Offset in the X, Y direction
          //           ),
          //         ],
          //       ),
          //       child: const Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text("OCI Foundations Associate"),
          //                 Text("Oracle"),
          //               ],
          //             ),
          //             Text(
          //                 "This is to certify that I am an Oracle cloud infrastructure foundations associate"),
          //             Text("August 2023 - August 2025"),
          //           ]),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
