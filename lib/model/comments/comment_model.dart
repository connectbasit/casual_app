import '../../index.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@Freezed()
sealed class CommentModel with _$CommentModel{
  factory CommentModel({
    @Default('') @JsonKey(name: 'body') String userComment,
    @Default(0) @JsonKey(name: 'likes') int likes,
    @JsonKey(name: 'user') User? user,
}) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);
}

@Freezed()
sealed class User with _$User{
  factory User({
    @Default('') @JsonKey(name: 'fullName') String name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}