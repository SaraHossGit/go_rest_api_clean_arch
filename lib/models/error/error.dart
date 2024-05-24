import 'package:json_annotation/json_annotation.dart'; 

part 'error.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class Error {

  final  String? field;

  final  String? message;

  Error({this.field, this.message});

   factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

   Map<String, dynamic> toJson() => _$ErrorToJson(this);
}

