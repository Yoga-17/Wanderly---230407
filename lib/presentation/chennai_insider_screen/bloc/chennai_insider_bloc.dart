import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wanderly/presentation/chennai_insider_screen/models/chennai_insider_model.dart';
part 'chennai_insider_event.dart';
part 'chennai_insider_state.dart';

/// A bloc that manages the state of a ChennaiInsider according to the event that is dispatched to it.
class ChennaiInsiderBloc
    extends Bloc<ChennaiInsiderEvent, ChennaiInsiderState> {
  ChennaiInsiderBloc(ChennaiInsiderState initialState) : super(initialState) {
    on<ChennaiInsiderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChennaiInsiderInitialEvent event,
    Emitter<ChennaiInsiderState> emit,
  ) async {
    emit(state.copyWith(annaNagarController: TextEditingController()));
  }
}
