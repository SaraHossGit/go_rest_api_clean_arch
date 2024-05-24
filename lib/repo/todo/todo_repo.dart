import 'package:go_rest_api_clean_arch/models/todo/to_do.dart';
import 'package:go_rest_api_clean_arch/web_services.dart';

class ToDoRepo{
  final WebServices webServices;
  ToDoRepo(this.webServices);

  Future<List<ToDo>> getToDos() async {
    final response= await webServices.getToDos();
    return response;
  }
}