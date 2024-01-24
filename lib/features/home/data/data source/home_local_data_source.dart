import 'package:book_store/constanceApp.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:hive_flutter/adapters.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> featchFeatureBooks();
  List<BookEntity> fearchNewetBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> featchFeatureBooks() {
    var box = Hive.box<BookEntity>(kFeaturesBox);

    return box.values.toList();
  }

  @override
  List<BookEntity> fearchNewetBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);

    return box.values.toList();
  }
}
