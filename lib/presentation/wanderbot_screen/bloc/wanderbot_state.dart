// ignore_for_file: must_be_immutable

part of 'wanderbot_bloc.dart';

/// Represents the state of Wanderbot in the application.
class WanderbotState extends Equatable {
  WanderbotState({
    this.placeholderTextController,
    this.wanderbotModelObj,
  });

  TextEditingController? placeholderTextController;

  WanderbotModel? wanderbotModelObj;

  @override
  List<Object?> get props => [
        placeholderTextController,
        wanderbotModelObj,
      ];
  WanderbotState copyWith({
    TextEditingController? placeholderTextController,
    WanderbotModel? wanderbotModelObj,
  }) {
    return WanderbotState(
      placeholderTextController:
          placeholderTextController ?? this.placeholderTextController,
      wanderbotModelObj: wanderbotModelObj ?? this.wanderbotModelObj,
    );
  }
}
