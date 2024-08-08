import 'package:booklyapp/Features/home/date/repo/homeRepo.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../date/book/book.model.dart';

part 'home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit(this.homeRepo) : super(HomeCubitInitial());
  final Homerepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(HomeCubitLoading());
    var result = await homeRepo.fetchfeaturedBooks();
    result.fold((failure) {
      emit(HomeCubitfailure(failure.errmassage));
    }, (books) {
      emit(HomeCubitSucsses(books));
    });
  }
}
