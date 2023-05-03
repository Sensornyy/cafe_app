import 'package:cafe_app/domain/entities/user_entity.dart';
import 'package:cafe_app/domain/repository/repository.dart';

class GetUserUseCase {
  final Repository repository;

  GetUserUseCase(this.repository);

  Future<UserEntity> call() async {
    return await repository.getUser();
  }
}
