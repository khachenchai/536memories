class UserModel {
  late final String firstname;
  late final String surname;
  late final String stdId;
  late final String password;
  late List<String> postsId = [];

  UserModel({required this.firstname, required this.surname, required this.stdId, required this.password, required this.postsId});

  Map<String, dynamic> toJson() => {
    'firstname' : firstname,
    'lastname' : surname,
    'stdId' : stdId,
    'password' : password,
    'postsId' : postsId
  };

  UserModel fromJson(Map<String, dynamic> json) => UserModel(
    firstname: json['firstname'],
    surname: json['surname'], 
    stdId: json['stdId'], 
    password: json['password'], 
    postsId: json['postsId']
  );
}