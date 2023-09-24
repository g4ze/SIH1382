// ignore_for_file: must_be_immutable

part of 'driver_home_on_logged_out_bloc.dart';

/// Represents the state of DriverHomeOnLoggedOut in the application.
class DriverHomeOnLoggedOutState extends Equatable {
  DriverHomeOnLoggedOutState({
    this.isSelectedSwitch = false,
    this.driverHomeOnLoggedOutModelObj,
  });

  DriverHomeOnLoggedOutModel? driverHomeOnLoggedOutModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        driverHomeOnLoggedOutModelObj,
      ];
  DriverHomeOnLoggedOutState copyWith({
    bool? isSelectedSwitch,
    DriverHomeOnLoggedOutModel? driverHomeOnLoggedOutModelObj,
  }) {
    return DriverHomeOnLoggedOutState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      driverHomeOnLoggedOutModelObj:
          driverHomeOnLoggedOutModelObj ?? this.driverHomeOnLoggedOutModelObj,
    );
  }
}
