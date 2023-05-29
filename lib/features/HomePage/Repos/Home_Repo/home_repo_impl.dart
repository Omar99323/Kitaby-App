import 'package:kitaby/Features/HomePage/Repos/Home_Repo/home_repo.dart';
import 'package:kitaby/Features/HomePage/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:kitaby/Core/errors/failure.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBottomBooksList() {

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchTopBooksList() {

    throw UnimplementedError();
  }
  
}