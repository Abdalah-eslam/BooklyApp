import 'package:booklyapp/Features/home/presintation/views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';

import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const khomeview = '/homeview';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: khomeview,
      builder: (context, state) => HomeView(),
    ),
  ]);
}
