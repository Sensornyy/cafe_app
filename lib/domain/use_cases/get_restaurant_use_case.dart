import 'package:cafe_app/domain/entities/restaurant_entity.dart';
import 'package:cafe_app/domain/entities/user_entity.dart';
import 'package:cafe_app/domain/repository/repository.dart';

class GetRestaurantUseCase {
  final Repository repository;

  GetRestaurantUseCase(this.repository);

  Future<List<RestaurantEntity>> call() async {
    return await repository.getRestaurants();
  }
}
