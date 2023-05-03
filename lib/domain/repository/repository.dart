import 'package:cafe_app/domain/entities/news_entity.dart';
import 'package:cafe_app/domain/entities/user_entity.dart';

abstract class Repository {
  Future<List<NewsEntity>> getNews();

  Future<UserEntity> getUser();
}
