import 'package:booklyapp/Features/home/date/book/book.model.dart';
import 'package:booklyapp/Features/home/date/book/details_book/details_book.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<Failure, List<BookModel>>> fetchnewestbooks();
  Future<Either<Failure, List<BookModel>>> fetchfeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSamilerBooks(int iD);
  Future<Either<Failure, DetailsBook>> fetchdetailsBooks(int iD);
}
