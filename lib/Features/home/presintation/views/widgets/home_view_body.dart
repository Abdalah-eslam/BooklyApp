import 'package:booklyapp/Features/home/presintation/views/widgets/customAppbar.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/futureItembook.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/futureListbooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Customappbar(),
        Futurelistbooks(),
      ],
    );
  }
}
