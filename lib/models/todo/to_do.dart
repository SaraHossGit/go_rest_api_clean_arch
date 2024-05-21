import 'package:json_annotation/json_annotation.dart'; 

part 'to_do.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ToDo {

  final  int? id;

  final  int? userId;

  final  String? title;

  final  String? dueOn;

  final  String? status;

  ToDo({@JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'title') this.title, @JsonKey(name: 'due_on') this.dueOn, @JsonKey(name: 'status') this.status});

   factory ToDo.fromJson(Map<String, dynamic> json) => _$ToDoFromJson(json);

   Map<String, dynamic> toJson() => _$ToDoToJson(this);
}

