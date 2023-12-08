// ignore_for_file: must_be_immutable

part of 'login_sginup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginSginup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginSginupEvent extends Equatable {}

/// Event that is dispatched when the LoginSginup widget is first created.
class LoginSginupInitialEvent extends LoginSginupEvent {
  @override
  List<Object?> get props => [];
}
