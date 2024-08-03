import 'package:booklyapp/Features/home/presintation/views/book_details_view.dart';
import 'package:booklyapp/Features/home/presintation/views/home_view.dart';
import 'package:booklyapp/Features/search/presentation/views/search_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';

import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const khomeview = '/homeview';
  static const kbookview = '/Bookview';
  static const ksearchview = '/searchview';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: ksearchview,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kbookview,
      builder: (context, state) => const BookView(),
    ),
    GoRoute(
      path: khomeview,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
