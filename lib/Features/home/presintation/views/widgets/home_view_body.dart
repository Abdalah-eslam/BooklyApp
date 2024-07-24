import 'package:booklyapp/Features/home/presintation/views/widgets/customAppbar.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/futureListbooks.dart';
import 'package:booklyapp/core/utils/styles.dart';
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
    return const Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Customappbar(),
          Futurelistbooks(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textstyle24,
          )
        ],
      ),
    );
  }
}
