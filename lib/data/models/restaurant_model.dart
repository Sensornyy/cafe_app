import 'package:cafe_app/domain/entities/restaurant_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_model.freezed.dart';

part 'restaurant_model.g.dart';
@freezed
class RestaurantModel extends RestaurantEntity with _$RestaurantModel {
  // final int id;
  // final String name;
  // final String city;
  // final bool isOpen;

  const factory RestaurantModel({
    required int id,
    required String name,
    required String city,
    required bool isOpen,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, Object?> json) => _$RestaurantModelFromJson(json);
}