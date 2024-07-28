import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cache/cache_helper.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/core/utils/widget/app_router.dart';
import 'package:news_app/features/home/presentation/manger/set_data/set_data_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.cacheInitialization();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SetDataCubit>(
      create: (context) => SetDataCubit(),
      child: BlocBuilder<SetDataCubit, SetDataState>(
        builder: (context, state) {
          final isDarkTheme = state is SetDataSuccess ? state.isDark : false;

          final isThemeSaved = BlocProvider.of<SetDataCubit>(context).getData();

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: Colors.white,
              primaryColor: AppThemeColor.primaryColor,
              hintColor: Colors.white,
            ),
            themeMode:
                isThemeSaved ?? isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            darkTheme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Colors.black,
              hintColor: Colors.black,
              primaryColor: Colors.orange,
            ),
          );
        },
      ),
    );
  }
}
