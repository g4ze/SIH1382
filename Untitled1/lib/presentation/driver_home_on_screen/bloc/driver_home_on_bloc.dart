import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/driver_home_on_screen/models/driver_home_on_model.dart';
part 'driver_home_on_event.dart';
part 'driver_home_on_state.dart';

/// A bloc that manages the state of a DriverHomeOn according to the event that is dispatched to it.
class DriverHomeOnBloc extends Bloc<DriverHomeOnEvent, DriverHomeOnState> {
  DriverHomeOnBloc(DriverHomeOnState initialState) : super(initialState) {
    on<DriverHomeOnInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<DriverHomeOnState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    DriverHomeOnInitialEvent event,
    Emitter<DriverHomeOnState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
