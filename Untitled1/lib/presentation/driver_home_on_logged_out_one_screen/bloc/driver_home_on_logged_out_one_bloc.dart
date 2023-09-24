import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/driver_home_on_logged_out_one_screen/models/driver_home_on_logged_out_one_model.dart';
part 'driver_home_on_logged_out_one_event.dart';
part 'driver_home_on_logged_out_one_state.dart';

/// A bloc that manages the state of a DriverHomeOnLoggedOutOne according to the event that is dispatched to it.
class DriverHomeOnLoggedOutOneBloc
    extends Bloc<DriverHomeOnLoggedOutOneEvent, DriverHomeOnLoggedOutOneState> {
  DriverHomeOnLoggedOutOneBloc(DriverHomeOnLoggedOutOneState initialState)
      : super(initialState) {
    on<DriverHomeOnLoggedOutOneInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<DriverHomeOnLoggedOutOneState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _onInitialize(
    DriverHomeOnLoggedOutOneInitialEvent event,
    Emitter<DriverHomeOnLoggedOutOneState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: false));
  }
}
