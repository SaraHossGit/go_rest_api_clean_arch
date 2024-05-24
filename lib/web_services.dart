import 'package:dio/dio.dart';
import 'package:go_rest_api_clean_arch/models/comment/comment.dart';
import 'package:go_rest_api_clean_arch/models/post/post.dart';
import 'package:go_rest_api_clean_arch/models/todo/to_do.dart';
import 'package:go_rest_api_clean_arch/models/users/user.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'web_services.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public/v2/')
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET('users')
  Future<List<User>> getUsers();

  @GET('users/{id}')
  Future<User> getSingleUser(@Path() int id);

  /*
  ********* OR *********

  @GET('users/{user_id}')
  Future<User> getSingleUser(@Path('user_id') int id);
   */

  @POST('users')
  Future<User> createUser(@Body() Map<String,dynamic> user);

  @GET('users/{id}')
  Future<HttpResponse> deleteUser(@Path() int id);

  @GET('todos')
  Future<List<ToDo>> getToDos();

  @GET('posts')
  Future<List<Post>> getPosts();

  @GET('comments')
  Future<List<Comment>> getComments();
}