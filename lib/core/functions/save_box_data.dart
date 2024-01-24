 import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:hive/hive.dart';

void saveDataBox(List<BookEntity> books ,String boxName) {
    var box = Hive.box(boxName);
    box.add(books);
  }