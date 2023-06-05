import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'package:cafe_app/data/repository/repository_impl.dart';
import 'package:cafe_app/data/sources/local_data_source.dart';
import 'package:cafe_app/domain/repository/repository.dart';
import 'package:cafe_app/domain/use_cases/get_news_use_case.dart';
import 'package:cafe_app/domain/use_cases/get_user_use_case.dart';


final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => GetNewsUseCase(sl()));

  sl.registerLazySingleton(() => GetUserUseCase(sl()));

  sl.registerLazySingleton<Repository>(
    () => RepositoryImpl(sl()),
  );

  sl.registerLazySingleton<LocalDataSource>(
    () => LocalDataSourceImpl(sl()),
  );

  //TODO: create 2 databases for user and news, use the code below as an example
  //TODO: add mock data to databases

  // var databasesPath = await getDatabasesPath();
  // String path = join(databasesPath, 'cafe_app.db');
  //
  // Database database = await openDatabase(path, version: 1,
  //     onCreate: (Database db, int version) async {
  //   await db.execute(
  //       'CREATE TABLE recipes (id INTEGER PRIMARY KEY AUTOINCREMENT, label TEXT, calories DOUBLE, image TEXT, ingredientLines TEXT)');
  // });
  //
  // sl.registerSingletonAsync<Database>(() async => database);

  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'cafe_app.db');

  Database database = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE IF NOT EXISTS users(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        name VARCHAR(50), 
        score INT, 
        gender VARCHAR(6), 
        birthday TEXT));''');

        await db.execute('''
        CREATE TABLE IF NOT EXISTS news(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        title VARCHAR(100), 
        body TEXT));''');
  });

  sl.registerSingletonAsync<Database>(() async => database);

}
