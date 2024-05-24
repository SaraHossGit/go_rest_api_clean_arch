import 'package:go_rest_api_clean_arch/models/users/user.dart';
import 'package:go_rest_api_clean_arch/web_services.dart';
import 'package:retrofit/retrofit.dart';

class UserRepo{
  final WebServices webServices;
  UserRepo(this.webServices);

  Future<List<User>> getUsers() async {
    final response= await webServices.getUsers();
    return response;
  }

  Future<User> getSingleUser({required int userId}) async {
    final response= await webServices.getSingleUser(userId);
    return response;
  }

  Future<User> createUser({required Map<String,dynamic> userData}) async {
    final response= await webServices.createUser(userData);
    return response;
  }

  Future<HttpResponse> deleteUser({required int userId}) async {
    final response= await webServices.deleteUser(userId);
    return response;
  }

}