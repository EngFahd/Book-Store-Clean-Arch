import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/data%20source/home_local_data_source.dart';
import 'package:book_store/features/home/data/data%20source/home_remote_data_source.dart';
import 'package:book_store/features/home/domain/repo/home_repo_implemnt.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getItN = GetIt.instance;
void setupServiceAloocator() {
  getItN.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getItN.registerSingleton<HomeRepoImplemnt>(
    HomeRepoImplemnt(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        ApiService(
          Dio(),
        ),
      ),
    ),
  );
}
