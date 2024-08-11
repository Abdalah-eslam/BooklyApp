import 'package:booklyapp/Features/home/manger/details_cubit/details_cubit.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/futureItembook.dart';
import 'package:booklyapp/core/utils/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Samilarbooks extends StatelessWidget {
  const Samilarbooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SamilarCubit, DetailsState>(
      builder: (context, state) {
        if (state is SamilerSucsses) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Bookitem(
                  ImageUrl: state.books[index].image!,
                );
              });
        } else if (state is DetailsFaliure) {
          return const Center(
            child: Errwidget(
                errormassage: ' Oops ,There was and Error while loading Books'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
