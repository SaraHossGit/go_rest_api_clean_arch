import 'package:go_rest_api_clean_arch/models/post/post.dart';
import 'package:go_rest_api_clean_arch/web_services.dart';

class PostRepo{
  final WebServices webServices;
  PostRepo(this.webServices);

  Future<List<Post>> getPosts() async {
    final response= await webServices.getPosts();
    return response;
  }
}