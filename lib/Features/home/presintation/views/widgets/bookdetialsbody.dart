import 'package:booklyapp/Features/home/manger/details_cubit/details_cubit.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/appbar_book_details.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/futureItembook.dart';

import 'package:booklyapp/Features/home/presintation/views/widgets/samilarBooks.dart';
import 'package:booklyapp/core/utils/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_actions.dart';

class Bookdetialsbody extends StatelessWidget {
  const Bookdetialsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        if (state is DetailsSucsses) {
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
                  child: Bookitem(
                    ImageUrl: state.detailsbook.image ?? '',
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Center(
                  child: Text(
                    state.detailsbook.title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textstyle30
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  state.detailsbook.authors?[0].name ?? '',
                  style: Styles.textstyle18.copyWith(
                      fontWeight: FontWeight.w100,
                      color: Colors.grey.withOpacity(0.8)),
                ),
                const SizedBox(
                  height: 8,
                ),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  data: state.detailsbook.publishDate ?? 0,
                  namberpages: state.detailsbook.numberOfPages ?? 0,
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
                    style: Styles.textstyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                    child: const Samilarbooks()),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        } else if (state is DetailsFaliure) {
          return ErrorWidget(state.errmassage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
