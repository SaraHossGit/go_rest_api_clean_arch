import 'package:bloc/bloc.dart';
import 'package:go_rest_api_clean_arch/cubit/comment/comment_states.dart';
import 'package:go_rest_api_clean_arch/repo/comment/comment_repo.dart';

class CommentCubit extends Cubit<CommentStates>{
  final CommentRepo commentRepo;
  CommentCubit(this.commentRepo):super(InitialCommentState());
  
  void getComments (){
    commentRepo.getComments().then((commentsList) => emit(CommentLoadedState(commentsList)));
  }
  
}