import 'package:go_router/go_router.dart';

import 'package:news_app/features/home/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
