// ignore_for_file: must_be_immutable

part of 'passenger_home_bus_card_logged_in_bloc.dart';

/// Represents the state of PassengerHomeBusCardLoggedIn in the application.
class PassengerHomeBusCardLoggedInState extends Equatable {
  PassengerHomeBusCardLoggedInState(
      {this.passengerHomeBusCardLoggedInModelObj});

  PassengerHomeBusCardLoggedInModel? passengerHomeBusCardLoggedInModelObj;

  @override
  List<Object?> get props => [
        passengerHomeBusCardLoggedInModelObj,
      ];
  PassengerHomeBusCardLoggedInState copyWith(
      {PassengerHomeBusCardLoggedInModel?
          passengerHomeBusCardLoggedInModelObj}) {
    return PassengerHomeBusCardLoggedInState(
      passengerHomeBusCardLoggedInModelObj:
          passengerHomeBusCardLoggedInModelObj ??
              this.passengerHomeBusCardLoggedInModelObj,
    );
  }
}
