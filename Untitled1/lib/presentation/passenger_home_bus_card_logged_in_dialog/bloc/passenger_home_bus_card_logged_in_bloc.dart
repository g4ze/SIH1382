import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/passenger_home_bus_card_logged_in_dialog/models/passenger_home_bus_card_logged_in_model.dart';
part 'passenger_home_bus_card_logged_in_event.dart';
part 'passenger_home_bus_card_logged_in_state.dart';

/// A bloc that manages the state of a PassengerHomeBusCardLoggedIn according to the event that is dispatched to it.
class PassengerHomeBusCardLoggedInBloc extends Bloc<
    PassengerHomeBusCardLoggedInEvent, PassengerHomeBusCardLoggedInState> {
  PassengerHomeBusCardLoggedInBloc(
      PassengerHomeBusCardLoggedInState initialState)
      : super(initialState) {
    on<PassengerHomeBusCardLoggedInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PassengerHomeBusCardLoggedInInitialEvent event,
    Emitter<PassengerHomeBusCardLoggedInState> emit,
  ) async {}
}
