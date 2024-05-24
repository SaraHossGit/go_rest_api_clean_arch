import 'package:go_rest_api_clean_arch/models/users/user.dart';

abstract class UserStates{}

class InitialState extends UserStates{}

class UsersLoaded extends UserStates{
  final List<User> usersList;
  UsersLoaded (this.usersList);
}

class SingleUserLoaded extends UserStates{
  final User user;
  SingleUserLoaded (this.user);
}