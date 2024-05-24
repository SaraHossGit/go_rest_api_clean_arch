import 'package:go_rest_api_clean_arch/models/comment/comment.dart';
import 'package:go_rest_api_clean_arch/web_services.dart';

class CommentRepo{
  final WebServices webServices;
  CommentRepo(this.webServices);

  Future<List<Comment>> getComments() async {
    final response= await webServices.getComments();
    return response;
  }
}