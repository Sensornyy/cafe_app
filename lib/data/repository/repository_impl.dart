import 'package:cafe_app/data/sources/local_data_source.dart';
import 'package:cafe_app/domain/entities/news_entity.dart';
import 'package:cafe_app/domain/entities/user_entity.dart';
import 'package:cafe_app/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final LocalDataSource source;

  RepositoryImpl(this.source);

  @override
  Future<List<NewsEntity>> getNews() {
    try {
      return source.getNews();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<UserEntity> getUser() {
    try {
      return source.getUser();
    } catch (e) {
      throw Exception(e);
    }
  }
}
