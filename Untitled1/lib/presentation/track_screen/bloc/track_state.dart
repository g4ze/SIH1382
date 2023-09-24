// ignore_for_file: must_be_immutable

part of 'track_bloc.dart';

/// Represents the state of Track in the application.
class TrackState extends Equatable {
  TrackState({this.trackModelObj});

  TrackModel? trackModelObj;

  @override
  List<Object?> get props => [
        trackModelObj,
      ];
  TrackState copyWith({TrackModel? trackModelObj}) {
    return TrackState(
      trackModelObj: trackModelObj ?? this.trackModelObj,
    );
  }
}
