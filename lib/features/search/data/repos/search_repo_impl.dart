import 'package:books_app/core/Utils/api_service.dart';
import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchAllBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:computer&Sorting=newest');
      List<BookModel> book = [];
      for (var item in data['items']) {
        try {
          book.add(BookModel.fromJson(item));
        } catch (e) {
          book.add(BookModel.fromJson(item));
        }
      }
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
