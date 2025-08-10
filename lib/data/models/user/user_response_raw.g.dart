// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponseRaw _$UserResponseRawFromJson(Map<String, dynamic> json) =>
    _UserResponseRaw(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$UserResponseRawToJson(_UserResponseRaw instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age,
    };
