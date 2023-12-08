// ignore_for_file: must_be_immutable

part of 'chennai_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Chennai widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChennaiEvent extends Equatable {}

/// Event that is dispatched when the Chennai widget is first created.
class ChennaiInitialEvent extends ChennaiEvent {
  @override
  List<Object?> get props => [];
}
