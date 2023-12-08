import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wanderly/presentation/wanderbot_screen/models/wanderbot_model.dart';
part 'wanderbot_event.dart';
part 'wanderbot_state.dart';

/// A bloc that manages the state of a Wanderbot according to the event that is dispatched to it.
class WanderbotBloc extends Bloc<WanderbotEvent, WanderbotState> {
  WanderbotBloc(WanderbotState initialState) : super(initialState) {
    on<WanderbotInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WanderbotInitialEvent event,
    Emitter<WanderbotState> emit,
  ) async {
    emit(state.copyWith(placeholderTextController: TextEditingController()));
  }
}
