import 'package:bloc/bloc.dart';
import 'package:go_rest_api_clean_arch/cubit/todo/todo_states.dart';
import 'package:go_rest_api_clean_arch/repo/todo/todo_repo.dart';

class ToDoCubit extends Cubit<ToDoStates>{
  final ToDoRepo toDoRepo;
  ToDoCubit(this.toDoRepo):super(InitialToDoState());
  
  void getAllToDos (){
    toDoRepo.getToDos().then((toDoList) => emit(ToDoLoadedState(toDoList)));
  }
  
}