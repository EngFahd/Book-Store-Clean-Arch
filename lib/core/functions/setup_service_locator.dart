import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/data%20source/home_local_data_source.dart';
import 'package:book_store/features/home/data/data%20source/home_remote_data_source.dart';
import 'package:book_store/features/home/domain/repo/home_repo_implemnt.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;
void setup() {
  gitIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  gitIt.registerSingleton<HomeRepoImplemnt>(
    HomeRepoImplemnt(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        gitIt.get<ApiService>(),
      ),
    ),
  );
}


