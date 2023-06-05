class NewsEntity {
  final String title;
  final String body;

  NewsEntity({
    required this.title,
    required this.body,
  });

  factory NewsEntity.fromSql(Map<String, dynamic> map) {
    return NewsEntity(
        title: map['title'] as String,
        body: map['body'] as String,
    );
  }
}
