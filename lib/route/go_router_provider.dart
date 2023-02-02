import 'dart:ui';

import 'package:app_project/cart.dart';
import 'package:app_project/error_screen.dart';
import 'package:app_project/features/dashboard/presentation/ui/dashboard_screen.dart';
import 'package:app_project/settings.dart';
import 'package:app_project/views/home.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:go_router/go_router.dart';

import 'named_route.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigator,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/home',
        name: root,
        builder: (context, state) => const HomePage(),
      ),
      ShellRoute(
          navigatorKey: _shellNavigator,
          builder: (context, state, child) =>
              DashboardScreen(key: state.pageKey, child: child),
          routes: [
            GoRoute(
                path: '/',
                name: home,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: HomePage());
                }),
            GoRoute(
                path: '/cart',
                name: home,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: Cart());
                }),
            GoRoute(
                path: '/settings',
                name: home,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: Settings());
                })
          ])
    ],
    errorBuilder: (context, state) => RouteErrorScreen(
      errorMsg: state.error.toString(),
      key: state.pageKey,
    ),
  );
});
