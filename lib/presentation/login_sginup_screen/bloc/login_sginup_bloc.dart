import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wanderly/presentation/login_sginup_screen/models/login_sginup_model.dart';
part 'login_sginup_event.dart';
part 'login_sginup_state.dart';

/// A bloc that manages the state of a LoginSginup according to the event that is dispatched to it.
class LoginSginupBloc extends Bloc<LoginSginupEvent, LoginSginupState> {
  LoginSginupBloc(LoginSginupState initialState) : super(initialState) {
    on<LoginSginupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginSginupInitialEvent event,
    Emitter<LoginSginupState> emit,
  ) async {}
}
