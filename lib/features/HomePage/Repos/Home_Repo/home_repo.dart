import 'package:dartz/dartz.dart';
import 'package:kitaby/Core/errors/failure.dart';
import 'package:kitaby/Features/HomePage/Models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchAllBooksList();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooksList();
}
