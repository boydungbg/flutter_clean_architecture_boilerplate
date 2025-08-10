import 'package:dio/dio.dart';
import 'package:flutter_module_boilerplate/core/constants/network.dart';
import 'package:flutter_module_boilerplate/core/di/di.config.dart';
import 'package:flutter_module_boilerplate/core/env/env.dart';
import 'package:flutter_module_boilerplate/data/network/interceptor/common_interceptor.dart';
import 'package:flutter_module_boilerplate/data/network/rest_client.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.asNewInstance()..allowReassignment = true;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> setupLocator(Env env) async {
  Dio dio = Dio();
  dio.interceptors.add(CommonInterceptor());
  dio.options
    ..connectTimeout = (NetworkConstants.connectionTimeout)
    ..receiveTimeout = (NetworkConstants.receiveTimeout)
    ..sendTimeout = (NetworkConstants.sendTimeout)
    ..headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    }
    ..followRedirects = false;

  getIt.registerSingleton(() => Dio());

  getIt.registerSingleton(() => RestClient(getIt<Dio>(), baseUrl: env.apiUrl));
  $initGetIt(getIt);
}
