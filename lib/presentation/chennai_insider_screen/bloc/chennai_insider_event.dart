// ignore_for_file: must_be_immutable

part of 'chennai_insider_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChennaiInsider widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChennaiInsiderEvent extends Equatable {}

/// Event that is dispatched when the ChennaiInsider widget is first created.
class ChennaiInsiderInitialEvent extends ChennaiInsiderEvent {
  @override
  List<Object?> get props => [];
}
