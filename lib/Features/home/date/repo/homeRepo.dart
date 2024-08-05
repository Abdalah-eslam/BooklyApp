import 'package:booklyapp/Features/home/date/book/book.model.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchfeaturedBooks();
}
