import 'package:book_store/features/home/domain/entities/book_entities.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> featchFeatureBooks();
  List<BookEntity> fearchNewetBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fearchNewetBooks() {
    // TODO: implement fearchNewetBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> featchFeatureBooks() {
    // TODO: implement featchFeatureBooks
    throw UnimplementedError();
  }
}
