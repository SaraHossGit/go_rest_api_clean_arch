import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_rest_api_clean_arch/cubit/user/user_cubit.dart';
import 'package:go_rest_api_clean_arch/cubit/user/user_states.dart';
import 'package:go_rest_api_clean_arch/get_it.dart';
import 'package:go_rest_api_clean_arch/models/users/user.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> usersList = [];
    User user;
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<UserCubit>()..getSingleUser(userId: 6925955),
          child: BlocConsumer<UserCubit, UserStates>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is UsersLoaded) {
                  usersList = state.usersList;
                  return ListView.separated(
                      itemBuilder: (context, index) =>
                          Text(usersList[index].id.toString()),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemCount: usersList.length);
                }
                else if (state is SingleUserLoaded) {
                  user = state.user;
                  return Text(user.name.toString());
                }
                return const SizedBox();
              }),
        ),
      ),
    );
  }
}
