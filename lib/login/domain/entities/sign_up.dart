import 'package:equatable/equatable.dart';

class SignUp extends Equatable {
  final String fullName;
  final String email;
  final String phone;
  final String password;

 const SignUp({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.password,
  });

  @override

  List<Object?> get props => [
        fullName,
        email,
        phone,
        password,
      ];
}
