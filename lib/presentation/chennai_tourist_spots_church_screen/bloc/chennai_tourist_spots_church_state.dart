// ignore_for_file: must_be_immutable

part of 'chennai_tourist_spots_church_bloc.dart';

/// Represents the state of ChennaiTouristSpotsChurch in the application.
class ChennaiTouristSpotsChurchState extends Equatable {
  ChennaiTouristSpotsChurchState({this.chennaiTouristSpotsChurchModelObj});

  ChennaiTouristSpotsChurchModel? chennaiTouristSpotsChurchModelObj;

  @override
  List<Object?> get props => [
        chennaiTouristSpotsChurchModelObj,
      ];
  ChennaiTouristSpotsChurchState copyWith(
      {ChennaiTouristSpotsChurchModel? chennaiTouristSpotsChurchModelObj}) {
    return ChennaiTouristSpotsChurchState(
      chennaiTouristSpotsChurchModelObj: chennaiTouristSpotsChurchModelObj ??
          this.chennaiTouristSpotsChurchModelObj,
    );
  }
}
