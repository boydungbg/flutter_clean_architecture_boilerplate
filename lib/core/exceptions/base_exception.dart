import 'package:flutter_module_boilerplate/core/exceptions/errors/error_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_exception.freezed.dart';

@freezed
abstract class BaseException with _$BaseException implements Exception {
  const factory BaseException({@Default('') String message}) = _BaseException;

  const factory BaseException.serverException({
    @Default(-1) int statusCode,
    @Default('') String message,
    @Default(ErrorResponse()) ErrorResponse errorResponse,
  }) = ServerException;

  const factory BaseException.networkException({@Default('') String message}) =
      NetworkException;

  const factory BaseException.commonException({
    @Default('') String message,
    Object? error,
    StackTrace? trace,
  }) = CommonException;
}
