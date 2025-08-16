import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../auth/data/datasources/main_api.dart';

@module
abstract class InjectionModule {
  //! signInApi
  @lazySingleton
  MainApi signInApi(Dio dio) => MainApi(dio);
}
