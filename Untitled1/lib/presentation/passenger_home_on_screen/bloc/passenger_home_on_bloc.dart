import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/passenger_home_on_screen/models/passenger_home_on_model.dart';
part 'passenger_home_on_event.dart';
part 'passenger_home_on_state.dart';

/// A bloc that manages the state of a PassengerHomeOn according to the event that is dispatched to it.
class PassengerHomeOnBloc
    extends Bloc<PassengerHomeOnEvent, PassengerHomeOnState> {
  PassengerHomeOnBloc(PassengerHomeOnState initialState) : super(initialState) {
    on<PassengerHomeOnInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<PassengerHomeOnState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    PassengerHomeOnInitialEvent event,
    Emitter<PassengerHomeOnState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
