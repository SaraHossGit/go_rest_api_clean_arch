import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_rest_api_clean_arch/networking/network_exceptions.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(NetworkExceptions errorHandler) = Failure<T>;
}
