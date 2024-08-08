import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../Features/home/date/repo/home_repo_impl.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiService: getIt.get<ApiService>()));
}
