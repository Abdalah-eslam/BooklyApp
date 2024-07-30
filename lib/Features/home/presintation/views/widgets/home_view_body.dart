import 'package:booklyapp/Features/home/presintation/views/widgets/bestSeller_listview.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/customAppbar.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/futureListbooks.dart';

import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, bool isScrolled) {
          return [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 6.0),
                      child: Customappbar(),
                    ),
                    const Bookslistview(),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Best Seller',
                        style: Styles.textstyle24
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.0),
          child: BestSellerList(),
        ));
  }
}
