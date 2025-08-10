// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/network/rest_client.dart' as _i535;
import '../../data/repositories/user/user_repository_impl.dart' as _i991;
import '../../data/sources/remote/index.dart' as _i466;
import '../../data/sources/remote/user_remote_data_source.dart' as _i369;
import '../../domain/repositories/index.dart' as _i445;
import '../../domain/usecase/user/get_user_detail_usecase.dart' as _i55;
import '../exceptions/base_exception_handler.dart' as _i589;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i589.BaseExceptionHandler>(() => _i589.CommonExceptionHandler());
  gh.factory<_i369.UserRemoteDataSource>(
    () => _i369.UserRemoteDataSourceImpl(gh<_i535.RestClient>()),
  );
  gh.factory<_i445.UserRepository>(
    () => _i991.UserRepositoryImpl(gh<_i466.UserRemoteDataSource>()),
  );
  gh.factory<_i55.GetUserDetailUseCase>(
    () => _i55.GetUserDetailUseCase(gh<_i445.UserRepository>()),
  );
  return getIt;
}
