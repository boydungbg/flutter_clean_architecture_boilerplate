import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_raw.freezed.dart';
part 'user_response_raw.g.dart';

@freezed
abstract class UserResponseRaw with _$UserResponseRaw {
  const factory UserResponseRaw({
    required String firstName,
    required String lastName,
    required int age,
  }) = _UserResponseRaw;

  factory UserResponseRaw.fromJson(Map<String, Object?> json) =>
      _$UserResponseRawFromJson(json);
}
