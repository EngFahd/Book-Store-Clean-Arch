import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/functions/save_box_data.dart';
import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/model/book_model/item.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> featchFeatureBooks({int pageNumber = 0});
  Future<List<BookEntity>> featchNewsteBooks({int pageNumber = 0});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> featchFeatureBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=engineering&startIndex=${pageNumber * 10}");

    List<BookEntity> books = getBooks(data);

    // save with hive
    saveDataBox(books, kFeaturesBox);

    return books;
  }

  @override
  Future<List<BookEntity>> featchNewsteBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}");

    List<BookEntity> books = getBooks(data);

    saveDataBox(books, kNewestBox);

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
