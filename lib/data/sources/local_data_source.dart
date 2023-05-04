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
  Future<List<NewsEntity>> getNews() async {
    final news = await db.rawQuery("SELECT * FROM news");

    if (news.isNotEmpty) {
      return news.map((row) => NewsEntity.fromSql(row)).toList();
    } else {
      throw Exception("There are no news");
    }
  }

  @override
  Future<UserEntity> getUser() async {
    // TODO: add name argument
    String name = "Maksimus";
    
    final user = await db.rawQuery("SELECT name, score, gender, birthday FROM users WHERE name = '$name");

    if (user.isNotEmpty) {
      return UserEntity.fromSql(user.first);
    } else {
      throw Exception("User not found");
    }
  }

}
