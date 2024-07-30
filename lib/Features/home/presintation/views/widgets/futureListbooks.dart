import 'package:booklyapp/Features/home/presintation/views/widgets/futureItembook.dart';
import 'package:flutter/material.dart';

class Bookslistview extends StatelessWidget {
  const Bookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Bookitem();
          }),
    );
  }
}
