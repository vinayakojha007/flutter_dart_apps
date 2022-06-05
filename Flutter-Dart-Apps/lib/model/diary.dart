// const String tableName = "Diarys";

// class DiaryFields {
//   static const String id = '_id';
//   static const String userName = 'userName';
//   static const String password = 'password';

//   static final List<String> values = [id, userName, password];
// }

// class Diary {
//   final int? id;
//   final String userName;
//   final String password;

//   //? Create a Const Consturctor
//   const Diary({
//     this.id,
//     required this.userName,
//     required this.password,
//   });

//   //? Create a Copy Method
//   Diary copy({int? id, String? userName, String? password}) => Diary(
//       id: id ?? this.id,
//       userName: userName ?? this.userName,
//       password: password ?? this.password);

//   //? Code to Read the value from the JSON data to Fields
//   static Diary fromJson(Map<String, Object?> json) => Diary(
//       id: json[DiaryFields.id] as int?,
//       userName: json[DiaryFields.userName] as String,
//       password: json[DiaryFields.password] as String);

//   //? Code to Write Values from the Fields to JSON
//   Map<String, Object?> toJson() => {
//         DiaryFields.id: id,
//         DiaryFields.userName: userName,
//         DiaryFields.password: password
//       };
// }
