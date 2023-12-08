// ignore_for_file: must_be_immutable

part of 'chennai_bloc.dart';

/// Represents the state of Chennai in the application.
class ChennaiState extends Equatable {
  ChennaiState({
    this.priceController,
    this.chennaiModelObj,
  });

  TextEditingController? priceController;

  ChennaiModel? chennaiModelObj;

  @override
  List<Object?> get props => [
        priceController,
        chennaiModelObj,
      ];
  ChennaiState copyWith({
    TextEditingController? priceController,
    ChennaiModel? chennaiModelObj,
  }) {
    return ChennaiState(
      priceController: priceController ?? this.priceController,
      chennaiModelObj: chennaiModelObj ?? this.chennaiModelObj,
    );
  }
}
