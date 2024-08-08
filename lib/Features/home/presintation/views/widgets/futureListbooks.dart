import 'package:booklyapp/Features/home/manger/cubit/home_cubit_cubit.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/futureItembook.dart';
import 'package:booklyapp/core/utils/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookslistview extends StatelessWidget {
  const Bookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: BlocBuilder<HomeCubit, HomeCubitState>(
        builder: (context, state) {
          if (state is HomeCubitSucsses) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Bookitem();
                });
          }
          if (state is HomeCubitfailure) {
            return Errwidget(errormassage: state.errmasage);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
