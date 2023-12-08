// ignore_for_file: must_be_immutable

part of 'wanderbot_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Wanderbot widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WanderbotEvent extends Equatable {}

/// Event that is dispatched when the Wanderbot widget is first created.
class WanderbotInitialEvent extends WanderbotEvent {
  @override
  List<Object?> get props => [];
}
