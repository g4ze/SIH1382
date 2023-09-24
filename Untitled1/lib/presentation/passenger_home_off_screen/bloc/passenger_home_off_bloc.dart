import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/passenger_home_off_screen/models/passenger_home_off_model.dart';
part 'passenger_home_off_event.dart';
part 'passenger_home_off_state.dart';

/// A bloc that manages the state of a PassengerHomeOff according to the event that is dispatched to it.
class PassengerHomeOffBloc
    extends Bloc<PassengerHomeOffEvent, PassengerHomeOffState> {
  PassengerHomeOffBloc(PassengerHomeOffState initialState)
      : super(initialState) {
    on<PassengerHomeOffInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<PassengerHomeOffState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    PassengerHomeOffInitialEvent event,
    Emitter<PassengerHomeOffState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
