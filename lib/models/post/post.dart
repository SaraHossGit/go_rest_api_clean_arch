import 'package:json_annotation/json_annotation.dart'; 

part 'post.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class Post {

  final  int? id;

  final  int? userId;

  final  String? title;

  final  String? body;

  Post({@JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'title') this.title, @JsonKey(name: 'body') this.body});

   factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

   Map<String, dynamic> toJson() => _$PostToJson(this);
}

