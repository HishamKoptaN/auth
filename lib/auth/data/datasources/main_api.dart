import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/models/user_data.dart';
part 'main_api.g.dart';

@RestApi()
abstract class MainApi {
  factory MainApi(Dio dio, {String? baseUrl}) = _MainApi;
  @POST("auth/check")
  Future<UserData> check();
}
