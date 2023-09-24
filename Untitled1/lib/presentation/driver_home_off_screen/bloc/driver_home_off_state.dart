// ignore_for_file: must_be_immutable

part of 'driver_home_off_bloc.dart';

/// Represents the state of DriverHomeOff in the application.
class DriverHomeOffState extends Equatable {
  DriverHomeOffState({
    this.isSelectedSwitch = false,
    this.driverHomeOffModelObj,
  });

  DriverHomeOffModel? driverHomeOffModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        driverHomeOffModelObj,
      ];
  DriverHomeOffState copyWith({
    bool? isSelectedSwitch,
    DriverHomeOffModel? driverHomeOffModelObj,
  }) {
    return DriverHomeOffState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      driverHomeOffModelObj:
          driverHomeOffModelObj ?? this.driverHomeOffModelObj,
    );
  }
}
