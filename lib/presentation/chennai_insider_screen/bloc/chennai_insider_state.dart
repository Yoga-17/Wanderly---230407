// ignore_for_file: must_be_immutable

part of 'chennai_insider_bloc.dart';

/// Represents the state of ChennaiInsider in the application.
class ChennaiInsiderState extends Equatable {
  ChennaiInsiderState({
    this.annaNagarController,
    this.chennaiInsiderModelObj,
  });

  TextEditingController? annaNagarController;

  ChennaiInsiderModel? chennaiInsiderModelObj;

  @override
  List<Object?> get props => [
        annaNagarController,
        chennaiInsiderModelObj,
      ];
  ChennaiInsiderState copyWith({
    TextEditingController? annaNagarController,
    ChennaiInsiderModel? chennaiInsiderModelObj,
  }) {
    return ChennaiInsiderState(
      annaNagarController: annaNagarController ?? this.annaNagarController,
      chennaiInsiderModelObj:
          chennaiInsiderModelObj ?? this.chennaiInsiderModelObj,
    );
  }
}
