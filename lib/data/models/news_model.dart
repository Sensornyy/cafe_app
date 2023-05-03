import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cafe_app/domain/entities/news_entity.dart';

part 'news_model.freezed.dart';

part 'news_model.g.dart';

// TODO: write in terminal command [flutter pub run build_runner build] to generate all necessary files for models


@freezed
class NewsModel extends NewsEntity with _$NewsModel {
  const factory NewsModel({
    required String title,
    required String body,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, Object?> json) =>
      _$NewsModelFromJson(json);
}
