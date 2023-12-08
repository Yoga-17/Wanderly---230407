// ignore_for_file: must_be_immutable

part of 'chennai_tourist_spots_bloc.dart';

/// Represents the state of ChennaiTouristSpots in the application.
class ChennaiTouristSpotsState extends Equatable {
  ChennaiTouristSpotsState({this.chennaiTouristSpotsModelObj});

  ChennaiTouristSpotsModel? chennaiTouristSpotsModelObj;

  @override
  List<Object?> get props => [
        chennaiTouristSpotsModelObj,
      ];
  ChennaiTouristSpotsState copyWith(
      {ChennaiTouristSpotsModel? chennaiTouristSpotsModelObj}) {
    return ChennaiTouristSpotsState(
      chennaiTouristSpotsModelObj:
          chennaiTouristSpotsModelObj ?? this.chennaiTouristSpotsModelObj,
    );
  }
}
