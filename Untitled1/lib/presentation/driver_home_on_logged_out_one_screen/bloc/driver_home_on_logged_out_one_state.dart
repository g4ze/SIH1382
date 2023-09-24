// ignore_for_file: must_be_immutable

part of 'driver_home_on_logged_out_one_bloc.dart';

/// Represents the state of DriverHomeOnLoggedOutOne in the application.
class DriverHomeOnLoggedOutOneState extends Equatable {
  DriverHomeOnLoggedOutOneState({
    this.isSelectedSwitch = false,
    this.driverHomeOnLoggedOutOneModelObj,
  });

  DriverHomeOnLoggedOutOneModel? driverHomeOnLoggedOutOneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        driverHomeOnLoggedOutOneModelObj,
      ];
  DriverHomeOnLoggedOutOneState copyWith({
    bool? isSelectedSwitch,
    DriverHomeOnLoggedOutOneModel? driverHomeOnLoggedOutOneModelObj,
  }) {
    return DriverHomeOnLoggedOutOneState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      driverHomeOnLoggedOutOneModelObj: driverHomeOnLoggedOutOneModelObj ??
          this.driverHomeOnLoggedOutOneModelObj,
    );
  }
}
