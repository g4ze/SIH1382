import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/passenger_home_bus_card_logged_out_dialog/models/passenger_home_bus_card_logged_out_model.dart';
part 'passenger_home_bus_card_logged_out_event.dart';
part 'passenger_home_bus_card_logged_out_state.dart';

/// A bloc that manages the state of a PassengerHomeBusCardLoggedOut according to the event that is dispatched to it.
class PassengerHomeBusCardLoggedOutBloc extends Bloc<
    PassengerHomeBusCardLoggedOutEvent, PassengerHomeBusCardLoggedOutState> {
  PassengerHomeBusCardLoggedOutBloc(
      PassengerHomeBusCardLoggedOutState initialState)
      : super(initialState) {
    on<PassengerHomeBusCardLoggedOutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PassengerHomeBusCardLoggedOutInitialEvent event,
    Emitter<PassengerHomeBusCardLoggedOutState> emit,
  ) async {}
}
