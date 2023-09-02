import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:student_database/features/home/ui/home.dart';
import 'package:student_database/features/theme/ui/theme.dart';
import '../../features/addstudent/ui/add_screen.dart';
import '../../features/details/ui/details.dart';
import '../../features/studentlist/ui/students_screen.dart';
import 'constants.dart';

class AppRouter {
  AppRouter._privateConstructor();
  static final AppRouter _instance = AppRouter._privateConstructor();//Singleton pattern, used to manage  single global instance of a class.
  static AppRouter get instance => _instance;
  GoRouter router = GoRouter(routes: [
    GoRoute(
      name: RoutingConstants.settingsRouteName,
      path: RoutingConstants.settingsRoutePath,
      pageBuilder: (context, state) => MaterialPage(child: Settings()),
    ),
    GoRoute(
      name: RoutingConstants.homeRouteName,
      path: RoutingConstants.homeRoutePath,
      pageBuilder: (context, state) => MaterialPage(child: HomeScreen()),
    ),
    GoRoute(
      name: RoutingConstants.addstudentsRouteName,
      path: RoutingConstants.addstudentsRoutePath,
      pageBuilder: (context, state) => MaterialPage(child: AddStudentPage()),
    ),
    GoRoute(
      name: RoutingConstants.studentlistRouteName,
      path: RoutingConstants.studentlistRoutePath,
      pageBuilder: (context, state) => const MaterialPage(child: StudentsPage()),
    ),
    GoRoute(
      name: RoutingConstants.detailsRouteName,
      path: '${RoutingConstants.detailsRoutePath}/:index',
      pageBuilder: (context, state) {
        final int index = int.parse(state.pathParameters['index']!);
        return MaterialPage(child: StudentDetails(index: index));
      },
    ),
  ]);
}
