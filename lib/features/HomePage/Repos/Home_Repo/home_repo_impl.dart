import 'package:dio/dio.dart';
import 'package:kitaby/Core/utils/api_service.dart';
import 'package:kitaby/Features/HomePage/Repos/Home_Repo/home_repo.dart';
import 'package:kitaby/Features/HomePage/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:kitaby/Core/errors/failure.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooksList() async {
    try {
      var data = await apiService.get(
          url:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject: programming');
      List<BookModel> newestBooks = [];
      for (var element in data['items']) {
        newestBooks.add(BookModel.fromJson(element));
      }
      return right(newestBooks);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMsg: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchAllBooksList() async {
    try {
      var data = await apiService.get(
          url: 'volumes?Filtering=free-ebooks&q=subject: programming');
      List<BookModel> allBooks = [];
      for (var element in data['items']) {
        allBooks.add(BookModel.fromJson(element));
      }
      return right(allBooks);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMsg: e.toString()));
    }
  }
}
