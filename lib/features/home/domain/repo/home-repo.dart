import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/domain/entities/book-entities.dart';
import 'package:dartz/dartz.dart';

//  بحدد ايه الي هيحصل بس مبعملش <implement>

abstract class HomeRepo {
  Future<Either<Failure,List<BookEntity>>> featchFeatureBooks();
  Future<Either<Failure,List<BookEntity>>> featchNewsteBooks();
}
