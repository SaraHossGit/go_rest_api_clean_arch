import 'package:json_annotation/json_annotation.dart'; 

part 'to_do.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ToDo {

  final  int? id;

  @JsonKey(name: 'user_id')
  final  int? userId;

  final  String? title;

  @JsonKey(name: 'due_on')
  final  String? dueOn;

  final  String? status;

  ToDo({this.id, this.userId, this.title, this.dueOn, this.status});

   factory ToDo.fromJson(Map<String, dynamic> json) => _$ToDoFromJson(json);

   Map<String, dynamic> toJson() => _$ToDoToJson(this);
}

