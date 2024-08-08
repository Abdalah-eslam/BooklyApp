import 'package:booklyapp/Features/home/date/book/book.model.dart';
import 'package:booklyapp/Features/home/date/repo/homeRepo.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeRepoImpl implements Homerepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchnewestbooks() async {
    try {
      var data = await apiService.get(endpoint: '&query=resent');

      List<BookModel> books = [];
      for (var item in data['books']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioerror(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchfeaturedBooks() async {
    try {
      var data =
          await apiService.get(endpoint: '&query=programing&sort=rating');

      List<BookModel> books = [];
      for (var List in data['books']) {
        for (var item in List) {
          books.add(BookModel.fromJson(item));
        }
        debugPrint(books.toString());
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioerror(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
