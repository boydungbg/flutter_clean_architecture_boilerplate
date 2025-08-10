import 'package:flutter/material.dart';
import 'package:flutter_module_boilerplate/presentation/features/index.dart';
import 'package:flutter_module_boilerplate/presentation/routes/route_name.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: RouteName.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
