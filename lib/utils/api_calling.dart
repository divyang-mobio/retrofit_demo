import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../model/user_model.dart';
import '../model/model.dart';

part 'api_calling.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class ApiCalling{
  factory ApiCalling(Dio dio) = _ApiCalling;

  @GET('/posts')
  Future<List<DataModel>> getPost();

  @GET('/users')
  Future<List<UserModel>> getUser();
}
