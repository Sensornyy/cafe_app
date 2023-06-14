import 'package:equatable/equatable.dart';

class RestaurantEntity extends Equatable {
  final int id;
  final String name;
  final String city;
  final bool isOpen;

  const RestaurantEntity({
    required this.id,
    required this.name,
    required this.city,
    required this.isOpen,
  });

  @override
  List<Object> get props => [id, name, city, isOpen];
}
