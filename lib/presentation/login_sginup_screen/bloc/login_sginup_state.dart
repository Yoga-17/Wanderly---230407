// ignore_for_file: must_be_immutable

part of 'login_sginup_bloc.dart';

/// Represents the state of LoginSginup in the application.
class LoginSginupState extends Equatable {
  LoginSginupState({this.loginSginupModelObj});

  LoginSginupModel? loginSginupModelObj;

  @override
  List<Object?> get props => [
        loginSginupModelObj,
      ];
  LoginSginupState copyWith({LoginSginupModel? loginSginupModelObj}) {
    return LoginSginupState(
      loginSginupModelObj: loginSginupModelObj ?? this.loginSginupModelObj,
    );
  }
}
