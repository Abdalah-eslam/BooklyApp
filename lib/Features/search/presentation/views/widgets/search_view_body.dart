import 'package:booklyapp/core/utils/appRouters.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../home/presintation/views/widgets/bestSeller_item.dart';
import 'search_text_feild.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextFeild(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Result',
            style: Styles.textstyle24,
          ),
          Expanded(child: SearchResult())
        ],
      ),
    );
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

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
