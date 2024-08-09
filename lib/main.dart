import 'package:booklyapp/Features/home/date/repo/home_repo_impl.dart';
import 'package:booklyapp/Features/home/manger/cubit/home_cubit_cubit.dart';
import 'package:booklyapp/Features/home/manger/cubit/newest_books_cubit.dart';
import 'package:booklyapp/SimpleBlocobserver.dart';
import 'package:booklyapp/constant.dart';

import 'package:booklyapp/core/utils/appRouters.dart';
import 'package:booklyapp/core/utils/service_locator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  setUp();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              HomeCubit(getIt.get<HomeRepoImpl>())..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: Approuter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
