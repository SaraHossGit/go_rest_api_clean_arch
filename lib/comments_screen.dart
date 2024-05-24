import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_rest_api_clean_arch/cubit/comment/comment_cubit.dart';
import 'package:go_rest_api_clean_arch/cubit/comment/comment_states.dart';
import 'package:go_rest_api_clean_arch/get_it.dart';
import 'package:go_rest_api_clean_arch/models/comment/comment.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Comment> commentsList = [];
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<CommentCubit>()..getComments(),
        child: BlocConsumer<CommentCubit, CommentStates>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is CommentLoadedState) {
                commentsList = state.commentsList;
                return ListView.separated(
                    itemBuilder: (context, index) =>
                        Text(commentsList[index].postId.toString()),
                    separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                    itemCount: commentsList.length);
              }
              return const SizedBox();
            }),
      ),
    );
  }
}
