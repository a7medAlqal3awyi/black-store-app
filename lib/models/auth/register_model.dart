import 'package:equatable/equatable.dart';

class RegisterModel extends Equatable {
  final String accessToken;
  final RegisterUserData? user;

  const RegisterModel({required this.accessToken, required this.user});

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
        accessToken: json['access_token'],
        user: json['user'] != null
            ? RegisterUserData.fromJson(json['user'])
            : null);
  }

  @override
  List<Object?> get props => [accessToken, user];
}

class RegisterUserData extends Equatable {
  final int id;
  final String name;
  final String email;
  final String createdAt;
  final String updatedAt;

  const RegisterUserData({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.email,
  });

  factory RegisterUserData.fromJson(Map<String, dynamic> data) {
    return RegisterUserData(
      id: data['id'],
      createdAt: data['created_at'],
      updatedAt: data['updated_at'],
      name: data['name'],
      email: data['email'],
    );
  }

  @override
  List<Object?> get props => [id, createdAt, name, email, updatedAt];
}
