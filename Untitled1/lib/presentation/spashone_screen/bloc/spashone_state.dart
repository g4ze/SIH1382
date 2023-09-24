// ignore_for_file: must_be_immutable

part of 'spashone_bloc.dart';

/// Represents the state of Spashone in the application.
class SpashoneState extends Equatable {
  SpashoneState({this.spashoneModelObj});

  SpashoneModel? spashoneModelObj;

  @override
  List<Object?> get props => [
        spashoneModelObj,
      ];
  SpashoneState copyWith({SpashoneModel? spashoneModelObj}) {
    return SpashoneState(
      spashoneModelObj: spashoneModelObj ?? this.spashoneModelObj,
    );
  }
}
