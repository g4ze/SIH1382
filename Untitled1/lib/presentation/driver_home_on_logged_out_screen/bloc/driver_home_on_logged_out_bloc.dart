import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/driver_home_on_logged_out_screen/models/driver_home_on_logged_out_model.dart';
part 'driver_home_on_logged_out_event.dart';
part 'driver_home_on_logged_out_state.dart';

/// A bloc that manages the state of a DriverHomeOnLoggedOut according to the event that is dispatched to it.
class DriverHomeOnLoggedOutBloc
    extends Bloc<DriverHomeOnLoggedOutEvent, DriverHomeOnLoggedOutState> {
  DriverHomeOnLoggedOutBloc(DriverHomeOnLoggedOutState initialState)
      : super(initialState) {
    on<DriverHomeOnLoggedOutInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<DriverHomeOnLoggedOutState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _onInitialize(
    DriverHomeOnLoggedOutInitialEvent event,
    Emitter<DriverHomeOnLoggedOutState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: false));
  }
}
