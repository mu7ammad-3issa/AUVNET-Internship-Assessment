import 'package:equatable/equatable.dart';

abstract class User extends Equatable {
  final String? id;
  final String email;

  const User({this.id, required this.email});

  @override
  List<Object?> get props => [id, email];
}
