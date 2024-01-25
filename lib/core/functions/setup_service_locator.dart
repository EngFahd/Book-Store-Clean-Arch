import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/data%20source/home_local_data_source.dart';
import 'package:book_store/features/home/data/data%20source/home_remote_data_source.dart';
import 'package:book_store/features/home/domain/repo/home_repo_implemnt.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;
void setupServiceAloocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplemnt>(
    HomeRepoImplemnt(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
       ApiService(Dio())
      ),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
