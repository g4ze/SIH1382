// ignore_for_file: must_be_immutable

part of 'passenger_home_bus_card_logged_out_bloc.dart';

/// Represents the state of PassengerHomeBusCardLoggedOut in the application.
class PassengerHomeBusCardLoggedOutState extends Equatable {
  PassengerHomeBusCardLoggedOutState(
      {this.passengerHomeBusCardLoggedOutModelObj});

  PassengerHomeBusCardLoggedOutModel? passengerHomeBusCardLoggedOutModelObj;

  @override
  List<Object?> get props => [
        passengerHomeBusCardLoggedOutModelObj,
      ];
  PassengerHomeBusCardLoggedOutState copyWith(
      {PassengerHomeBusCardLoggedOutModel?
          passengerHomeBusCardLoggedOutModelObj}) {
    return PassengerHomeBusCardLoggedOutState(
      passengerHomeBusCardLoggedOutModelObj:
          passengerHomeBusCardLoggedOutModelObj ??
              this.passengerHomeBusCardLoggedOutModelObj,
    );
  }
}
