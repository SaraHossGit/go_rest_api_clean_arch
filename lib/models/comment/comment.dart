import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class Comment {
  final int? id;

  final int? postId;

  final String? name;

  final String? email;

  final String? body;

  Comment(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'post_id') this.postId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'body') this.body});

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
