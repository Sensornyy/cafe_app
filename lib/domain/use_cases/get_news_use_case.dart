import 'package:cafe_app/domain/entities/news_entity.dart';
import 'package:cafe_app/domain/repository/repository.dart';

class GetNewsUseCase {
  final Repository repository;

  GetNewsUseCase(this.repository);

  Future<List<NewsEntity>> call() async {
    return await repository.getNews();
  }
}
