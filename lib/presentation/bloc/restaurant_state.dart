part of 'restaurant_bloc.dart';

@freezed
class RestaurantState with _$RestaurantState {
  const factory RestaurantState.initial() = Initial;

  const factory RestaurantState.loaded() = Loaded;
}
