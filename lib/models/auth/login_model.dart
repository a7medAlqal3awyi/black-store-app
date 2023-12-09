import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  final String accessToken;
  final UserData? user;

  const LoginModel({required this.accessToken, required this.user});
  factory LoginModel.fromJson(Map<String,dynamic>json) {
    return LoginModel(
        accessToken: json['access_token'],
        user: json['user'] !=null ? UserData.fromJson(json['user']) : null
    );}

  @override
  List<Object?> get props => [
    accessToken,
    user,
  ];
}

class UserData extends Equatable {
  final int id;

  final int roleId;

  final String name;
  final String email;
  final String avatar;

  const UserData(
      {required this.id,
      required this.roleId,
      required this.name,
      required this.email,
      required this.avatar});

  factory UserData.fromJson(Map<String, dynamic> data) {
    return UserData(
      id: data['id'],
      roleId: data['role_id'],
      name: data['name'],
      email: data['email'],
      avatar: data['avatar'],
    );
  }

  @override
  List<Object?> get props => [id, roleId, name, email, avatar];
}
