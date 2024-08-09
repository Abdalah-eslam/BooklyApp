import 'package:booklyapp/Features/home/manger/cubit/newest_books_cubit.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/bestSeller_item.dart';
import 'package:booklyapp/core/utils/appRouters.dart';
import 'package:booklyapp/core/utils/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSecsses) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(Approuter.kbookview);
                    },
                    child: BestSellerItem(
                      book: state.books[index],
                    )),
              );
            },
          );
        } else if (state is NewestBooksfailure) {
          return Errwidget(errormassage: state.errmassage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
