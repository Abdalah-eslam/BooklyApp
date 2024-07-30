import 'package:booklyapp/Features/home/presintation/views/widgets/appbar_book_details.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/futureItembook.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_actions.dart';

class Bookdetialsbody extends StatelessWidget {
  const Bookdetialsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          const AppbarbookDetails(),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .24),
            child: const Bookitem(),
          ),
          const SizedBox(
            height: 24,
          ),
          Center(
            child: Text(
              'The name of book is name of book',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textstyle30.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'The Auther Of Book',
            style: Styles.textstyle18.copyWith(
                fontWeight: FontWeight.w100,
                color: Colors.grey.withOpacity(0.8)),
          ),
          const SizedBox(
            height: 8,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 16,
          ),
          const BookActions(),
          const Expanded(
            child: SizedBox(
              height: 16,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like ',
              style: Styles.textstyle20.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Bookslistview(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class Bookslistview extends StatelessWidget {
  const Bookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Bookitem();
          }),
    );
  }
}
