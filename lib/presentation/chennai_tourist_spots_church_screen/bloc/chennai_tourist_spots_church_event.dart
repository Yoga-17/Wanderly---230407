// ignore_for_file: must_be_immutable

part of 'chennai_tourist_spots_church_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChennaiTouristSpotsChurch widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChennaiTouristSpotsChurchEvent extends Equatable {}

/// Event that is dispatched when the ChennaiTouristSpotsChurch widget is first created.
class ChennaiTouristSpotsChurchInitialEvent
    extends ChennaiTouristSpotsChurchEvent {
  @override
  List<Object?> get props => [];
}
