// ignore_for_file: must_be_immutable

part of 'chennai_insider_day_plan_bloc.dart';

/// Represents the state of ChennaiInsiderDayPlan in the application.
class ChennaiInsiderDayPlanState extends Equatable {
  ChennaiInsiderDayPlanState({this.chennaiInsiderDayPlanModelObj});

  ChennaiInsiderDayPlanModel? chennaiInsiderDayPlanModelObj;

  @override
  List<Object?> get props => [
        chennaiInsiderDayPlanModelObj,
      ];
  ChennaiInsiderDayPlanState copyWith(
      {ChennaiInsiderDayPlanModel? chennaiInsiderDayPlanModelObj}) {
    return ChennaiInsiderDayPlanState(
      chennaiInsiderDayPlanModelObj:
          chennaiInsiderDayPlanModelObj ?? this.chennaiInsiderDayPlanModelObj,
    );
  }
}
