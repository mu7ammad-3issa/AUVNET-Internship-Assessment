import 'package:equatable/equatable.dart';

import '../../domian/entities/user.dart';

class UserModel extends Equatable implements User {
  @override
  final String? id;
  @override
  final String email;

  const UserModel({this.id, required this.email});

  @override
  List<Object?> get props => [id, email];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String?,
      email: json['email'] as String,
    );
  }
}
