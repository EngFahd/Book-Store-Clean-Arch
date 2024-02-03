import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/core/use_case/no_paramter_use_case.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FeatchBooksDetailesUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;
  FeatchBooksDetailesUseCase(this.homeRepo);
  
  @override
  Future<Either<Failure, List<BookEntity>>> call() async{
    return await homeRepo.featchFeatureBooks();
  }

  }