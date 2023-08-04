import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'cubit/nationalize_cubit.dart';
import 'data/repositories/nationalize_repo.dart';
import 'data/web_services/nationalize_web_services.dart';

final NationalizeGetIt = GetIt.instance;

void getNationalizeInit() {
  NationalizeGetIt.registerLazySingleton<NationalizeCubit>(() => NationalizeCubit(NationalizeGetIt(),),);
  NationalizeGetIt.registerLazySingleton<NationalizeRepo>(() => NationalizeRepo(NationalizeGetIt(),),);
  NationalizeGetIt.registerLazySingleton<NationalizeWebServices>(() => NationalizeWebServices(createAndSetupDio(),),);
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio
    ..options.connectTimeout = Duration(seconds: 10)
    ..options.receiveTimeout = Duration(seconds: 10);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));

  return dio;
}