class UserEntity {
  final String name;
  final int score;
  final String gender;
  final DateTime birthday;

  UserEntity({
    required this.name,
    required this.score,
    required this.gender,
    required this.birthday,
  });

  factory UserEntity.fromSql(Map<String, dynamic> map) {
    return UserEntity(
      name: map['name'] as String,
      score: map['score'] as int,
      gender: map['gender'] as String,
      birthday: DateTime.parse(map['birthday'] as String),
    );
  }
}
