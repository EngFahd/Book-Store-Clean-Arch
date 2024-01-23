import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/domain/repo/home-repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_case/no_paramter_use_case.dart';

// https://www.udemy.com/course/deep-dive-into-clean-architecture-in-flutter-2022arabic/learn/lecture/37322230#questions
class FeatchFeatureBooksUseCase extends UseCase<List<BookEntity>> {
  @override
  final HomeRepo homeRepo;
  FeatchFeatureBooksUseCase(this.homeRepo);
  
  @override
  Future<Either<Failure, List<BookEntity>>> call() async{
    // TODO: implement call
    return await homeRepo.featchFeatureBooks();
  }

  }



