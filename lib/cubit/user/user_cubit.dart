import 'package:go_rest_api_clean_arch/cubit/user/user_states.dart';
import 'package:bloc/bloc.dart';
import 'package:go_rest_api_clean_arch/models/users/user.dart';
import 'package:go_rest_api_clean_arch/repo/user/user_repo.dart';

class UserCubit extends Cubit<UserStates>{
  final UserRepo userRepo;
  UserCubit(this.userRepo)
      : super(InitialState());

  void getUsers(){
    userRepo.getUsers().then((usersList) => emit(UsersLoaded(usersList)));
  }

  void getSingleUser({required int userId}){
    userRepo.getSingleUser(userId: userId).then((user) => emit(SingleUserLoaded(user)));
  }

  void createUser({required User user}){
    userRepo.createUser(userData: user.toJson()).then((user) => emit(UserCreated(user)));
  }

  void deleteUser({required int userId}){
    userRepo.deleteUser(userId: userId).then((data) => emit(UserDeleted(data)));
  }
}