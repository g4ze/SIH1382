// ignore_for_file: must_be_immutable

part of 'driver_home_on_bloc.dart';

/// Represents the state of DriverHomeOn in the application.
class DriverHomeOnState extends Equatable {
  DriverHomeOnState({
    this.isSelectedSwitch = false,
    this.driverHomeOnModelObj,
  });

  DriverHomeOnModel? driverHomeOnModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        driverHomeOnModelObj,
      ];
  DriverHomeOnState copyWith({
    bool? isSelectedSwitch,
    DriverHomeOnModel? driverHomeOnModelObj,
  }) {
    return DriverHomeOnState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      driverHomeOnModelObj: driverHomeOnModelObj ?? this.driverHomeOnModelObj,
    );
  }
}
