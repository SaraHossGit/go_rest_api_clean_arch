import 'package:go_rest_api_clean_arch/models/users/user.dart';
import 'package:go_rest_api_clean_arch/web_services.dart';

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

}