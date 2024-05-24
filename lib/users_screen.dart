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
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<UserCubit>()..getUsers(),
        child: BlocConsumer<UserCubit, UserStates>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is DataLoaded) {
                usersList = state.usersList;
                return ListView.separated(
                    itemBuilder: (context, index) =>
                        Text(usersList[index].id.toString()),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: usersList.length);
              }
              return const SizedBox();
            }),
      ),
    );
  }
}
