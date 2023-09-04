import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_database/controller/theme/bloc/theme_bloc.dart';
import 'package:student_database/utils/constants/app_themes.dart';
import 'controller/details/bloc/details_bloc.dart';
import 'controller/home/bloc/home_bloc.dart';
import 'controller/studentlist/bloc/students_bloc.dart';
import 'utils/constants/routing.dart';

void main() => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeBloc(),
          ),
          BlocProvider(
            create: (context) => StudentsBloc(),
          ),
          BlocProvider(
            create: (context) => DetailsBloc(),
          ),
          BlocProvider(
            create: (context) => ThemeBloc(),
          )
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter singleton = AppRouter.instance;
    var router = singleton.router;
    return SafeArea(
      child: BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
