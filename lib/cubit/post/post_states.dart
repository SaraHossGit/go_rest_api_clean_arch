
import 'package:go_rest_api_clean_arch/models/post/post.dart';

abstract class PostStates{}

class InitialPostState extends PostStates{}

class PostLoadedState extends PostStates{
  final List<Post> postsList;
  PostLoadedState (this.postsList);
}