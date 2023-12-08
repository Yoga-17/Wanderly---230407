// ignore_for_file: must_be_immutable

part of 'chennai_tourist_spots_zoo_bloc.dart';

/// Represents the state of ChennaiTouristSpotsZoo in the application.
class ChennaiTouristSpotsZooState extends Equatable {
  ChennaiTouristSpotsZooState({
    this.sliderIndex = 0,
    this.chennaiTouristSpotsZooModelObj,
  });

  ChennaiTouristSpotsZooModel? chennaiTouristSpotsZooModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        chennaiTouristSpotsZooModelObj,
      ];
  ChennaiTouristSpotsZooState copyWith({
    int? sliderIndex,
    ChennaiTouristSpotsZooModel? chennaiTouristSpotsZooModelObj,
  }) {
    return ChennaiTouristSpotsZooState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      chennaiTouristSpotsZooModelObj:
          chennaiTouristSpotsZooModelObj ?? this.chennaiTouristSpotsZooModelObj,
    );
  }
}
