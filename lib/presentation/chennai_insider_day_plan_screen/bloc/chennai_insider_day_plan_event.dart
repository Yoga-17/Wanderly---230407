// ignore_for_file: must_be_immutable

part of 'chennai_insider_day_plan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChennaiInsiderDayPlan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChennaiInsiderDayPlanEvent extends Equatable {}

/// Event that is dispatched when the ChennaiInsiderDayPlan widget is first created.
class ChennaiInsiderDayPlanInitialEvent extends ChennaiInsiderDayPlanEvent {
  @override
  List<Object?> get props => [];
}
