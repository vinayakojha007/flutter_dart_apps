const String tableName = 'notes';

class NoteFields {
  static const String id = 'id';
  static const String isImportant = 'isImportant';
  static const String PriorityLevel = 'priorityLevel';
  static const String title = 'title';
  static const String description = 'description';
  static const String time = 'time';

  static final List<String> values = [
    id,
    isImportant,
    PriorityLevel,
    title,
    description,
    time,
  ];
}

class Note {
  final int? id;
  final bool isImportant;
  final int priorityLevel;
  final String title;
  final String description;
  final DateTime createdTime;

  // Create a const consturctor
  const Note({
    this.id,
    required this.isImportant,
    required this.priorityLevel,
    required this.title,
    required this.description,
    required this.createdTime,
  });
  Note copy({
    int? id,
    bool? isImportant,
    int? priorityLevel,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Note(
        id: id ?? this.id,
        isImportant: isImportant ?? this.isImportant,
        priorityLevel: priorityLevel ?? this.priorityLevel,
        title: title ?? this.title,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
      );
  //code to Read the value from the JSON data to Feilds
  static Note fromJson(Map<String, Object?> json) => Note(
        id: json[NoteFields.id] as int?,
        isImportant: json[NoteFields.isImportant] == 1,
        priorityLevel: json[NoteFields.PriorityLevel] as int,
        title: json[NoteFields.PriorityLevel] as String,
        description: json[NoteFields.description] as String,
        createdTime: DateTime.parse(json[NoteFields.time] as String),
      );

  //Code to Write from the from the Fields to JSON
  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        NoteFields.isImportant: isImportant,
        NoteFields.PriorityLevel: priorityLevel,
        NoteFields.title: title,
        NoteFields.description: description,
        NoteFields.time: createdTime.toIso8601String(),
      };
}
