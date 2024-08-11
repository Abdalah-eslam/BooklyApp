import 'package:booklyapp/Features/home/manger/home_cubit/home_cubit_cubit.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/futureItembook.dart';
import 'package:booklyapp/core/utils/appRouters.dart';
import 'package:booklyapp/core/utils/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Bookslistview extends StatelessWidget {
  const Bookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    bool _isloading = false;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: BlocConsumer<HomeCubit, HomeCubitState>(
        listener: (context, state) {
          if (state is HomeCubitLoading) {
            _isloading = true;
          } else if (state is HomeCubitSucsses) {
            _isloading = false;
          }
        },
        builder: (context, state) {
          if (state is HomeCubitSucsses) {
            return Skeletonizer(
              enabled: _isloading,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(Approuter.kbookview,
                            extra: state.books[index].id);
                      },
                      child: Bookitem(
                        ImageUrl: state.books[index].image!,
                      ),
                    );
                  }),
            );
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
