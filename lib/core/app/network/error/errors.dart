import 'package:equatable/equatable.dart';

class Errors extends Equatable {
  final List<String>? email;

  const Errors({this.email});

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
        email: json['email'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'email': email,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [email];
}
