import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../features/home/home_screen.dart';

class RouteConfig{

  /// The route configuration.
  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        // routes: <RouteBase>[
        //   GoRoute(
        //     path: 'details',
        //     builder: (BuildContext context, GoRouterState state) {
        //       return const DetailsScreen();
        //     },
        //   ),
        // ],
      ),
      // GoRoute(
      //   path: '/projects',
      //   builder: (BuildContext context, GoRouterState state){
      //     //return ;
      //   },
      // ),
    ],
  );

}