import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wanderly/presentation/chennai_tourist_spots_screen/models/chennai_tourist_spots_model.dart';
part 'chennai_tourist_spots_event.dart';
part 'chennai_tourist_spots_state.dart';

/// A bloc that manages the state of a ChennaiTouristSpots according to the event that is dispatched to it.
class ChennaiTouristSpotsBloc
    extends Bloc<ChennaiTouristSpotsEvent, ChennaiTouristSpotsState> {
  ChennaiTouristSpotsBloc(ChennaiTouristSpotsState initialState)
      : super(initialState) {
    on<ChennaiTouristSpotsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChennaiTouristSpotsInitialEvent event,
    Emitter<ChennaiTouristSpotsState> emit,
  ) async {}
}
