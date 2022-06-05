const String tableName = 'Diaryinfos';

class DiaryinfoFields {
  static const String id = 'id';
  static const String title = 'title';
  static const String description = 'description';
  static const String time = 'time';

  static final List<String> values = [
    id,
    title,
    description,
    time,
  ];
}

class Diaryinfo {
  final int? id;
  final String title;
  final String description;
  final DateTime createdTime;

  // Create a const consturctor
  const Diaryinfo({
    this.id,
    required this.title,
    required this.description,
    required this.createdTime,
  });
  Diaryinfo copy({
    int? id,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Diaryinfo(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
      );
  //code to Read the value from the JSON data to Feilds
  static Diaryinfo fromJson(Map<String, Object?> json) => Diaryinfo(
        id: json[DiaryinfoFields.id] as int?,
        title: json[DiaryinfoFields.title] as String,
        description: json[DiaryinfoFields.description] as String,
        createdTime: DateTime.parse(json[DiaryinfoFields.time] as String),
      );

  //Code to Write from the from the Fields to JSON
  Map<String, Object?> toJson() => {
        DiaryinfoFields.id: id,
        DiaryinfoFields.title: title,
        DiaryinfoFields.description: description,
        DiaryinfoFields.time: createdTime.toIso8601String(),
      };
}
