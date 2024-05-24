import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_rest_api_clean_arch/cubit/todo/todo_cubit.dart';
import 'package:go_rest_api_clean_arch/cubit/todo/todo_states.dart';
import 'package:go_rest_api_clean_arch/get_it.dart';
import 'package:go_rest_api_clean_arch/models/todo/to_do.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ToDo> toDoList=[];
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo Screen"),
      ),
      body: BlocProvider(
        create: (context)=> getIt<ToDoCubit>()..getAllToDos(),
        child: BlocConsumer<ToDoCubit,ToDoStates>(
          listener: (context, state){},
          builder: (context, state){
            if(state is ToDoLoadedState){
              toDoList= state.toDoList;
              return ListView.separated(
                  itemBuilder: (context, index)=>Text("+ ${toDoList[index].title.toString()}"),
                  separatorBuilder: (context, index)=>const SizedBox(height: 10),
                  itemCount: toDoList.length);
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
