// ignore_for_file: must_be_immutable

part of 'passenger_home_ham_menu_bloc.dart';

/// Represents the state of PassengerHomeHamMenu in the application.
class PassengerHomeHamMenuState extends Equatable {
  PassengerHomeHamMenuState({this.passengerHomeHamMenuModelObj});

  PassengerHomeHamMenuModel? passengerHomeHamMenuModelObj;

  @override
  List<Object?> get props => [
        passengerHomeHamMenuModelObj,
      ];
  PassengerHomeHamMenuState copyWith(
      {PassengerHomeHamMenuModel? passengerHomeHamMenuModelObj}) {
    return PassengerHomeHamMenuState(
      passengerHomeHamMenuModelObj:
          passengerHomeHamMenuModelObj ?? this.passengerHomeHamMenuModelObj,
    );
  }
}
