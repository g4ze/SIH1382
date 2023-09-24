// ignore_for_file: must_be_immutable

part of 'spashthree_bloc.dart';

/// Represents the state of Spashthree in the application.
class SpashthreeState extends Equatable {
  SpashthreeState({this.spashthreeModelObj});

  SpashthreeModel? spashthreeModelObj;

  @override
  List<Object?> get props => [
        spashthreeModelObj,
      ];
  SpashthreeState copyWith({SpashthreeModel? spashthreeModelObj}) {
    return SpashthreeState(
      spashthreeModelObj: spashthreeModelObj ?? this.spashthreeModelObj,
    );
  }
}
