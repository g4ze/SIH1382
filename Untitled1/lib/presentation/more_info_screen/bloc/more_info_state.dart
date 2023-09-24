// ignore_for_file: must_be_immutable

part of 'more_info_bloc.dart';

/// Represents the state of MoreInfo in the application.
class MoreInfoState extends Equatable {
  MoreInfoState({this.moreInfoModelObj});

  MoreInfoModel? moreInfoModelObj;

  @override
  List<Object?> get props => [
        moreInfoModelObj,
      ];
  MoreInfoState copyWith({MoreInfoModel? moreInfoModelObj}) {
    return MoreInfoState(
      moreInfoModelObj: moreInfoModelObj ?? this.moreInfoModelObj,
    );
  }
}
