// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'auth/data/datasources/main_api.dart' as _i670;
import 'auth/data/repo_impl/main_repo_impl.dart' as _i884;
import 'auth/domain/repo/main_repo.dart' as _i464;
import 'auth/domain/usecases/main_use_casees.dart' as _i924;
import 'auth/present/bloc/main_bloc.dart' as _i949;
import 'core/injection/injection_module.dart' as _i670;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt initAuthInjection(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  gh.lazySingleton<_i670.MainApi>(
    () => injectionModule.signInApi(gh<_i361.Dio>()),
  );
  gh.factory<_i464.MainRepo>(
    () => _i884.MainRepoImpl(mainApi: gh<_i670.MainApi>()),
  );
  gh.lazySingleton<_i924.MainUseCasess>(
    () => _i924.MainUseCasess(mainRepo: gh<_i464.MainRepo>()),
  );
  gh.factory<_i949.MainBloc>(
    () => _i949.MainBloc(
      auth: gh<_i59.FirebaseAuth>(),
      mainUseCasess: gh<_i924.MainUseCasess>(),
    ),
  );
  return getIt;
}

class _$InjectionModule extends _i670.InjectionModule {}
