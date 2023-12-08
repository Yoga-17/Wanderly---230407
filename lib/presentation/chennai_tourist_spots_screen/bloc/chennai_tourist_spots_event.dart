// ignore_for_file: must_be_immutable

part of 'chennai_tourist_spots_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChennaiTouristSpots widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChennaiTouristSpotsEvent extends Equatable {}

/// Event that is dispatched when the ChennaiTouristSpots widget is first created.
class ChennaiTouristSpotsInitialEvent extends ChennaiTouristSpotsEvent {
  @override
  List<Object?> get props => [];
}
