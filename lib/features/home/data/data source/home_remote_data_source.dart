import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/model/book_model/item.dart';
import 'package:book_store/features/home/domain/entities/book-entities.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> featchFeatureBooks();
  Future<List<BookEntity>> featchNewsteBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> featchFeatureBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&q=programming");

    List<BookEntity> books = getBooks(data);
    return books;
  }

  @override
  Future<List<BookEntity>> featchNewsteBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&q=english");

    List<BookEntity> books = getBooks(data);
    return books;
  }

  List<BookEntity> getBooks(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookModel in data['items']) {
      books.add(Item.fromJson(bookModel));
    }
    return books;
  }
}
