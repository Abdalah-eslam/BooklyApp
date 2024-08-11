import 'package:booklyapp/Features/home/date/repo/homeRepo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../date/book/book.model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homerepo) : super(NewestBooksInitial());
  final Homerepo homerepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksloading());
    var result = await homerepo.fetchnewestbooks();
    result.fold((failure) {
      emit(NewestBooksfailure(failure.errmassage));
    }, (books) {
      emit(NewestBooksSecsses(books));
    });
  }
}
