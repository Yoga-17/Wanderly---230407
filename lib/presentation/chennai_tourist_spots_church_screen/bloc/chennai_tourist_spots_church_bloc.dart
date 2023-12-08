import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wanderly/presentation/chennai_tourist_spots_church_screen/models/chennai_tourist_spots_church_model.dart';
part 'chennai_tourist_spots_church_event.dart';
part 'chennai_tourist_spots_church_state.dart';

/// A bloc that manages the state of a ChennaiTouristSpotsChurch according to the event that is dispatched to it.
class ChennaiTouristSpotsChurchBloc extends Bloc<ChennaiTouristSpotsChurchEvent,
    ChennaiTouristSpotsChurchState> {
  ChennaiTouristSpotsChurchBloc(ChennaiTouristSpotsChurchState initialState)
      : super(initialState) {
    on<ChennaiTouristSpotsChurchInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChennaiTouristSpotsChurchInitialEvent event,
    Emitter<ChennaiTouristSpotsChurchState> emit,
  ) async {}
}
