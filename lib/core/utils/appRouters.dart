import 'package:booklyapp/Features/home/manger/details_cubit/details_cubit.dart';
import 'package:booklyapp/Features/home/presintation/views/book_details_view.dart';
import 'package:booklyapp/Features/home/presintation/views/home_view.dart';
import 'package:booklyapp/Features/search/presentation/views/search_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:go_router/go_router.dart';

import '../../Features/home/date/repo/home_repo_impl.dart';

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
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DetailsCubit(getIt.get<HomeRepoImpl>()),
          ),
          BlocProvider(
            create: (context) =>
                SamilarCubit(DetailsInitial(), getIt.get<HomeRepoImpl>()),
          ),
        ],
        child: BookView(id: state.extra as int),
      ),
    ),
    GoRoute(
      path: khomeview,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
