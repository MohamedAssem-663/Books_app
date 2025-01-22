import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;
  Future<void> fetchAllBooks() async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchAllBooks();
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, (searchBooks) {
      emit(SearchBooksSuccess(searchBooks));
    });
  }
}
