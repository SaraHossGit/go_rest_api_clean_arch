import 'package:go_rest_api_clean_arch/models/todo/to_do.dart';

abstract class ToDoStates{}

class InitialToDoState extends ToDoStates{}

class ToDoLoadedState extends ToDoStates{
  final List<ToDo> toDoList;
  ToDoLoadedState (this.toDoList);
}