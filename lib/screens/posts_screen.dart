import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_rest_api_clean_arch/cubit/post/post_cubit.dart';
import 'package:go_rest_api_clean_arch/cubit/post/post_states.dart';
import 'package:go_rest_api_clean_arch/get_it.dart';
import 'package:go_rest_api_clean_arch/models/post/post.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Post> postsList = [];
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<PostCubit>()..getPosts(),
        child: BlocConsumer<PostCubit, PostStates>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is PostLoadedState) {
                postsList = state.postsList;
                return ListView.separated(
                    itemBuilder: (context, index) =>
                        Text(postsList[index].userId.toString()),
                    separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                    itemCount: postsList.length);
              }
              return const SizedBox();
            }),
      ),
    );
  }
}
