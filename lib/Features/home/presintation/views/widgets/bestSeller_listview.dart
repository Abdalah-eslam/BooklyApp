import 'package:booklyapp/Features/home/presintation/views/widgets/bestSeller_item.dart';
import 'package:booklyapp/core/utils/appRouters.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(Approuter.kbookview);
              },
              child: const BestSellerItem()),
        );
      },
    );
  }
}
