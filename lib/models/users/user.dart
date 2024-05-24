import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class User {
  int? id;

  String? name;

  String? email;

  String? gender;

  String? status;

  User(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'status') this.status});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
