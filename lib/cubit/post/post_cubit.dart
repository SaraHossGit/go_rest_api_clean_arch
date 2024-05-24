import 'package:bloc/bloc.dart';
import 'package:go_rest_api_clean_arch/cubit/post/post_states.dart';
import 'package:go_rest_api_clean_arch/repo/post/post_repo.dart';

class PostCubit extends Cubit<PostStates>{
  final PostRepo postRepo;
  PostCubit(this.postRepo):super(InitialPostState());
  
  void getPosts (){
    postRepo.getPosts().then((postsList) => emit(PostLoadedState(postsList)));
  }
  
}