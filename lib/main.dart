import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/core/utils/widget/app_router.dart';
import 'package:news_app/features/home/presentation/manger/bloc/theme_bloc.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: Colors.white,
              primaryColor: AppThemeColor.primaryColor,
              hintColor: Colors.black,
            ),
            themeMode: state,
            darkTheme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Colors.black,
              hintColor: Colors.white,
              primaryColor: Colors.orange,
            ),
          );
        },
      ),
    );
  }
}
