// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

// munal part and == > flutter packages pub run build_runner build
part 'book_entities.g.dart';
// =============>first one > 0 
@HiveType(typeId: 0)
class BookEntity {
@HiveField(0)
  final String? bookId;
@HiveField(1)
  final String? image;
@HiveField(2)
  final String? titel;
@HiveField(3)
  final String? autherName;
@HiveField(4)
  final num? rating;
  @HiveField(5)
  final num? prise;

  BookEntity({
    required this.bookId,
    required this.image,
    required this.titel,
    required this.autherName,
    required this.rating,
    required this.prise,
  });
}
