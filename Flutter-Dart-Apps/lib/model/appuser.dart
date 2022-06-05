const String tableName = "AppUsers";

class AppUserFields {
  static const String id = '_id';
  static const String userName = 'userName';
  static const String password = 'password';

  static final List<String> values = [id, userName, password];
}

class AppUser {
  final int? id;
  final String userName;
  final String password;

  //? Create a Const Consturctor
  const AppUser({this.id, required this.userName, required this.password});

  //? Create a Copy Method
  AppUser copy({int? id, String? userName, String? password}) => AppUser(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      password: password ?? this.password);

  //? Code to Read the value from the JSON data to Fields
  static AppUser fromJson(Map<String, Object?> json) => AppUser(
      id: json[AppUserFields.id] as int?,
      userName: json[AppUserFields.userName] as String,
      password: json[AppUserFields.password] as String);

  //? Code to Write Values from the Fields to JSON
  Map<String, Object?> toJson() => {
        AppUserFields.id: id,
        AppUserFields.userName: userName,
        AppUserFields.password: password
      };
}
