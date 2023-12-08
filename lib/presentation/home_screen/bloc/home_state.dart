// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.locationController,
    this.searchController,
    this.homeModelObj,
  });

  TextEditingController? locationController;

  TextEditingController? searchController;

  HomeModel? homeModelObj;

  @override
  List<Object?> get props => [
        locationController,
        searchController,
        homeModelObj,
      ];
  HomeState copyWith({
    TextEditingController? locationController,
    TextEditingController? searchController,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      locationController: locationController ?? this.locationController,
      searchController: searchController ?? this.searchController,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
