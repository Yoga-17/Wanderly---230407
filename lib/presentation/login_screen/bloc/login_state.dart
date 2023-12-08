// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.nameController,
    this.passwordController,
    this.loginModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        nameController,
        passwordController,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? nameController,
    TextEditingController? passwordController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      nameController: nameController ?? this.nameController,
      passwordController: passwordController ?? this.passwordController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
