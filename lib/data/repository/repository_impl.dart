import 'package:cafe_app/data/sources/local_data_source.dart';
import 'package:cafe_app/data/sources/remote_data_source.dart';
import 'package:cafe_app/domain/entities/news_entity.dart';
import 'package:cafe_app/domain/entities/restaurant_entity.dart';
import 'package:cafe_app/domain/entities/user_entity.dart';
import 'package:cafe_app/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final LocalDataSource source;
  final RemoteDataSource remoteDataSource;

  RepositoryImpl(this.source, this.remoteDataSource);


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

  @override
  Future<List<RestaurantEntity>> getRestaurants() {
    return remoteDataSource.getRestaurants();
  }
}




//RemoteDataSource remote;
//LocalDataSource local;

// List<User> getUsers()
//
// if(internet.connection == true)
// return remote.getUsers;
// else
// return local.getUsers;