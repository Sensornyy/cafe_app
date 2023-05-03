import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cafe_app/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

// TODO: write in terminal command [flutter pub run build_runner build] to generate all necessary files for models


@freezed
class UserModel extends UserEntity with _$UserModel {
  const factory UserModel({
    required String name,
    required int score,
    required String gender,
    required DateTime birthday,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
