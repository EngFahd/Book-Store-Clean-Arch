import 'package:book_store/features/home/domain/entities/book-entities.dart';

abstract class HomeRemoteDataSource{
Future<List<BookEntity>> featchFeatureBooks();
  Future<List<BookEntity>> featchNewsteBooks();


}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  @override
  Future<List<BookEntity>> featchFeatureBooks() {
    // TODO: implement featchFeatureBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> featchNewsteBooks() {
    // TODO: implement featchNewsteBooks
    throw UnimplementedError();
  }

}