import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget_item_model.dart';
import 'package:wanderly/presentation/chennai_tourist_spots_zoo_screen/models/chennai_tourist_spots_zoo_model.dart';
part 'chennai_tourist_spots_zoo_event.dart';
part 'chennai_tourist_spots_zoo_state.dart';

/// A bloc that manages the state of a ChennaiTouristSpotsZoo according to the event that is dispatched to it.
class ChennaiTouristSpotsZooBloc
    extends Bloc<ChennaiTouristSpotsZooEvent, ChennaiTouristSpotsZooState> {
  ChennaiTouristSpotsZooBloc(ChennaiTouristSpotsZooState initialState)
      : super(initialState) {
    on<ChennaiTouristSpotsZooInitialEvent>(_onInitialize);
  }

  List<WidgetItemModel> fillWidgetItemList() {
    return List.generate(1, (index) => WidgetItemModel());
  }

  _onInitialize(
    ChennaiTouristSpotsZooInitialEvent event,
    Emitter<ChennaiTouristSpotsZooState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        chennaiTouristSpotsZooModelObj: state.chennaiTouristSpotsZooModelObj
            ?.copyWith(widgetItemList: fillWidgetItemList())));
  }
}
