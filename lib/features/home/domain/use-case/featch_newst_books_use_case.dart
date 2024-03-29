import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_case/use_case.dart';


// https://www.udemy.com/course/deep-dive-into-clean-architecture-in-flutter-2022arabic/learn/lecture/37322230#questions
class FeatchNewestBooksUseCase extends UseCase<List<BookEntity>,int> {
  final HomeRepo homeRepo;
  FeatchNewestBooksUseCase(this.homeRepo);
  
  @override
  Future<Either<Failure, List<BookEntity>>> call([int param =0]) async{

    return await homeRepo.featchNewsteBooks(pageNumber:param );
  }

  }



