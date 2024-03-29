import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:dartz/dartz.dart';

//  بحدد ايه الي هيحصل بس مبعملش <implement>

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> featchFeatureBooks(
      {int pageNumber = 0});
  Future<Either<Failure, List<BookEntity>>> featchNewsteBooks(
      {int pageNumber = 0});
}
