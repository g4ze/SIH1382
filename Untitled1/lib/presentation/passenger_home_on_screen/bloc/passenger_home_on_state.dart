// ignore_for_file: must_be_immutable

part of 'passenger_home_on_bloc.dart';

/// Represents the state of PassengerHomeOn in the application.
class PassengerHomeOnState extends Equatable {
  PassengerHomeOnState({
    this.isSelectedSwitch = false,
    this.passengerHomeOnModelObj,
  });

  PassengerHomeOnModel? passengerHomeOnModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        passengerHomeOnModelObj,
      ];
  PassengerHomeOnState copyWith({
    bool? isSelectedSwitch,
    PassengerHomeOnModel? passengerHomeOnModelObj,
  }) {
    return PassengerHomeOnState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      passengerHomeOnModelObj:
          passengerHomeOnModelObj ?? this.passengerHomeOnModelObj,
    );
  }
}
