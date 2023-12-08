import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wanderly/presentation/chennai_screen/models/chennai_model.dart';
part 'chennai_event.dart';
part 'chennai_state.dart';

/// A bloc that manages the state of a Chennai according to the event that is dispatched to it.
class ChennaiBloc extends Bloc<ChennaiEvent, ChennaiState> {
  ChennaiBloc(ChennaiState initialState) : super(initialState) {
    on<ChennaiInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChennaiInitialEvent event,
    Emitter<ChennaiState> emit,
  ) async {
    emit(state.copyWith(priceController: TextEditingController()));
  }
}
