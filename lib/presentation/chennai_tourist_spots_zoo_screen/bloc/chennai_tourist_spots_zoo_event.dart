// ignore_for_file: must_be_immutable

part of 'chennai_tourist_spots_zoo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChennaiTouristSpotsZoo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChennaiTouristSpotsZooEvent extends Equatable {}

/// Event that is dispatched when the ChennaiTouristSpotsZoo widget is first created.
class ChennaiTouristSpotsZooInitialEvent extends ChennaiTouristSpotsZooEvent {
  @override
  List<Object?> get props => [];
}
