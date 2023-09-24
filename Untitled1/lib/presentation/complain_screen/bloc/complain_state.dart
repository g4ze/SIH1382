// ignore_for_file: must_be_immutable

part of 'complain_bloc.dart';

/// Represents the state of Complain in the application.
class ComplainState extends Equatable {
  ComplainState({this.complainModelObj});

  ComplainModel? complainModelObj;

  @override
  List<Object?> get props => [
        complainModelObj,
      ];
  ComplainState copyWith({ComplainModel? complainModelObj}) {
    return ComplainState(
      complainModelObj: complainModelObj ?? this.complainModelObj,
    );
  }
}
