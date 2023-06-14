import 'dart:convert';

import 'package:cafe_app/data/models/restaurant_model.dart';
import 'package:cafe_app/domain/entities/restaurant_entity.dart';
import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  Future<List<RestaurantEntity>> getRestaurants();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio dio;

  RemoteDataSourceImpl(this.dio);

  @override
  Future<List<RestaurantModel>> getRestaurants() async {
    final response = await dio.get('https://cafeapptest.azurewebsites.net/api/Restaurant');

    final json = response.data as List;

    return json.map((e) => RestaurantModel.fromJson(e)).toList();
  }
}
