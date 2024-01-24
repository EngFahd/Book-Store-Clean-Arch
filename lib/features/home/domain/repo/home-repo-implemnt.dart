import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/data/data%20source/home_local_data_source.dart';
import 'package:book_store/features/home/data/data%20source/home_remote_data_source.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/domain/repo/home-repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemnt extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImplemnt(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> featchFeatureBooks() async {
    var listBox = homeLocalDataSource.featchFeatureBooks();
    if (listBox.isNotEmpty) {
      return right(listBox);
    }
    try {
      var booxs = await homeRemoteDataSource.featchFeatureBooks();
      return right(booxs);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> featchNewsteBooks() async {
    var listBox = homeLocalDataSource.fearchNewetBooks();
    if (listBox.isNotEmpty) {
      return right(listBox);
    }
    try {
      var booxs = await homeRemoteDataSource.featchNewsteBooks();
      return right(booxs);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
