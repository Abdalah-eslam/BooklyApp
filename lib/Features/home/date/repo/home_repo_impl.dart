import 'package:booklyapp/Features/home/date/book/book.model.dart';
import 'package:booklyapp/Features/home/date/book/details_book/details_book.dart';
import 'package:booklyapp/Features/home/date/repo/homeRepo.dart';
import 'package:booklyapp/constant.dart';
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

  @override
  Future<Either<Failure, DetailsBook>> fetchdetailsBooks(int iD) async {
    try {
      var response =
          await Dio().get('https://api.bigbookapi.com/$iD?api-key=$kapikey');

      DetailsBook bookdetails = DetailsBook.fromJson(response.data);

      return right(bookdetails);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioerror(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSamilerBooks(int iD) async {
    try {
      var response = await Dio()
          .get('https://api.bigbookapi.com/$iD/similar?api-key=$kapikey');
      var data = response.data;
      List<BookModel> books = [];
      for (var item in data['similar_books']) {
        books.add(BookModel.fromJson(item));

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
