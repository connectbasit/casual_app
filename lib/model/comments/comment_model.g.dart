// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentModel _$CommentModelFromJson(Map<String, dynamic> json) =>
    _CommentModel(
      userComment: json['body'] as String? ?? '',
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentModelToJson(_CommentModel instance) =>
    <String, dynamic>{
      'body': instance.userComment,
      'likes': instance.likes,
      'user': instance.user,
    };

_User _$UserFromJson(Map<String, dynamic> json) =>
    _User(name: json['fullName'] as String? ?? '');

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'fullName': instance.name,
};
