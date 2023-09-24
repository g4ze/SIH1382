// ignore_for_file: must_be_immutable

part of 'passenger_home_off_bloc.dart';

/// Represents the state of PassengerHomeOff in the application.
class PassengerHomeOffState extends Equatable {
  PassengerHomeOffState({
    this.isSelectedSwitch = false,
    this.passengerHomeOffModelObj,
  });

  PassengerHomeOffModel? passengerHomeOffModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        passengerHomeOffModelObj,
      ];
  PassengerHomeOffState copyWith({
    bool? isSelectedSwitch,
    PassengerHomeOffModel? passengerHomeOffModelObj,
  }) {
    return PassengerHomeOffState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      passengerHomeOffModelObj:
          passengerHomeOffModelObj ?? this.passengerHomeOffModelObj,
    );
  }
}
