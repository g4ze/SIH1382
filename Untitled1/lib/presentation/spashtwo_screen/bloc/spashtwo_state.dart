// ignore_for_file: must_be_immutable

part of 'spashtwo_bloc.dart';

/// Represents the state of Spashtwo in the application.
class SpashtwoState extends Equatable {
  SpashtwoState({this.spashtwoModelObj});

  SpashtwoModel? spashtwoModelObj;

  @override
  List<Object?> get props => [
        spashtwoModelObj,
      ];
  SpashtwoState copyWith({SpashtwoModel? spashtwoModelObj}) {
    return SpashtwoState(
      spashtwoModelObj: spashtwoModelObj ?? this.spashtwoModelObj,
    );
  }
}
