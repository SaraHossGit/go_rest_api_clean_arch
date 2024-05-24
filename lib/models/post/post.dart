import 'package:json_annotation/json_annotation.dart'; 

part 'post.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class Post {

  final  int? id;

  @JsonKey(name: 'user_id')
  final  int? userId;

  final  String? title;

  final  String? body;

  Post({this.id, this.userId, this.title, this.body});

   factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

   Map<String, dynamic> toJson() => _$PostToJson(this);
}

