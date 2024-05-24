import 'package:go_rest_api_clean_arch/cubit/user/user_states.dart';
import 'package:bloc/bloc.dart';
import 'package:go_rest_api_clean_arch/repo/user/user_repo.dart';

class UserCubit extends Cubit<UserStates>{
  final UserRepo userRepo;
  UserCubit(this.userRepo)
      : super(InitialState());

  void getUsers(){
    userRepo.getUsers().then((usersList) => emit(DataLoaded(usersList)));
  }
}