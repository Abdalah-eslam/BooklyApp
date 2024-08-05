import 'package:booklyapp/Features/home/date/book/book.model.dart';
import 'package:booklyapp/Features/home/date/repo/homeRepo.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements Homerepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks() {
    // TODO: implement fetchBestsellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchfeaturedBooks() {
    // TODO: implement fetchfeaturedBooks
    throw UnimplementedError();
  }
}
