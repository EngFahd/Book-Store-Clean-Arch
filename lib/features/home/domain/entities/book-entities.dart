// ignore_for_file: public_member_api_docs, sort_constructors_first
class BookEntity {
  final String? bookId;
  final String? image;
  final String? titel;
  final String? autherName;
  final num? rating;
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
