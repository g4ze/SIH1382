import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/driver_home_off_screen/models/driver_home_off_model.dart';
part 'driver_home_off_event.dart';
part 'driver_home_off_state.dart';

/// A bloc that manages the state of a DriverHomeOff according to the event that is dispatched to it.
class DriverHomeOffBloc extends Bloc<DriverHomeOffEvent, DriverHomeOffState> {
  DriverHomeOffBloc(DriverHomeOffState initialState) : super(initialState) {
    on<DriverHomeOffInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<DriverHomeOffState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    DriverHomeOffInitialEvent event,
    Emitter<DriverHomeOffState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
