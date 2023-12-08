import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wanderly/presentation/chennai_insider_day_plan_screen/models/chennai_insider_day_plan_model.dart';
part 'chennai_insider_day_plan_event.dart';
part 'chennai_insider_day_plan_state.dart';

/// A bloc that manages the state of a ChennaiInsiderDayPlan according to the event that is dispatched to it.
class ChennaiInsiderDayPlanBloc
    extends Bloc<ChennaiInsiderDayPlanEvent, ChennaiInsiderDayPlanState> {
  ChennaiInsiderDayPlanBloc(ChennaiInsiderDayPlanState initialState)
      : super(initialState) {
    on<ChennaiInsiderDayPlanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChennaiInsiderDayPlanInitialEvent event,
    Emitter<ChennaiInsiderDayPlanState> emit,
  ) async {}
}
