import 'package:book_store/constanceApp.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:hive_flutter/adapters.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> featchFeatureBooks({int pageNumper = 0});
  List<BookEntity> fearchNewetBooks({int pageNumper =0});
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> featchFeatureBooks({int pageNumper = 0}) {
    var box = Hive.box<BookEntity>(kFeaturesBox);
    // 10 box at time
    int startIndex = pageNumper * 10;
    int endIndex = (pageNumper + 1) * 10;
    int length = box.values.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fearchNewetBooks({int pageNumper = 0}) {
    var box = Hive.box<BookEntity>(kNewestBox);
    int startIndex = pageNumper * 10;
    int endIndex = (pageNumper + 1) * 10;
    int length = box.values.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex,endIndex);
  }
}
