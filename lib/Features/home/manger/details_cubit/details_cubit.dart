import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/date/book/book.model.dart';
import 'package:booklyapp/Features/home/date/book/details_book/details_book.dart';
import 'package:booklyapp/Features/home/date/repo/homeRepo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this.homerepo) : super(DetailsInitial());
  final Homerepo homerepo;
  Future<void> fetchDetailsBooks(int id) async {
    emit(DetailsLoading());
    var result = await homerepo.fetchdetailsBooks(id);
    result.fold((failure) {
      emit(DetailsFaliure(failure.errmassage));
    }, (DetailsBook) {
      emit(DetailsSucsses(DetailsBook));
    });
  }
}

class SamilarCubit extends Cubit<DetailsState> {
  SamilarCubit(super.initialState, this.homerepo);

  final Homerepo homerepo;
  Future<void> fetchSamilersBooks(int id) async {
    emit(DetailsLoading());
    try {
      var result = await homerepo.fetchSamilerBooks(id);
      result.fold((failure) {
        emit(DetailsFaliure(failure.errmassage));
      }, (books) {
        emit(SamilerSucsses(books));
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
