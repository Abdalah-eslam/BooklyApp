import 'package:booklyapp/Features/home/date/book/book.model.dart';
import 'package:booklyapp/Features/search/data/repo/searchrepo.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class Searchrepoimp implements Searchrepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchbooks() {
    // TODO: implement fetchSearchbooks
    throw UnimplementedError();
  }
}
