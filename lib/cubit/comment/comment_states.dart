
import 'package:go_rest_api_clean_arch/models/comment/comment.dart';

abstract class CommentStates{}

class InitialCommentState extends CommentStates{}

class CommentLoadedState extends CommentStates{
  final List<Comment> commentsList;
  CommentLoadedState (this.commentsList);
}