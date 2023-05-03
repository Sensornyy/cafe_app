import 'package:cafe_app/domain/entities/news_entity.dart';
import 'package:cafe_app/domain/entities/user_entity.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocalDataSource {
  Future<List<NewsEntity>> getNews();

  Future<UserEntity> getUser();
}

class LocalDataSourceImpl implements LocalDataSource {
  final Database db;

  LocalDataSourceImpl(this.db);

  @override
  Future<List<NewsEntity>> getNews() {
    // TODO: implement getNews
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

}
