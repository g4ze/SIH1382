// ignore_for_file: must_be_immutable

part of 'passenger_home_logged_out_bloc.dart';

/// Represents the state of PassengerHomeLoggedOut in the application.
class PassengerHomeLoggedOutState extends Equatable {
  PassengerHomeLoggedOutState({this.passengerHomeLoggedOutModelObj});

  PassengerHomeLoggedOutModel? passengerHomeLoggedOutModelObj;

  @override
  List<Object?> get props => [
        passengerHomeLoggedOutModelObj,
      ];
  PassengerHomeLoggedOutState copyWith(
      {PassengerHomeLoggedOutModel? passengerHomeLoggedOutModelObj}) {
    return PassengerHomeLoggedOutState(
      passengerHomeLoggedOutModelObj:
          passengerHomeLoggedOutModelObj ?? this.passengerHomeLoggedOutModelObj,
    );
  }
}
