import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/passenger_home_ham_menu_draweritem/models/passenger_home_ham_menu_model.dart';
part 'passenger_home_ham_menu_event.dart';
part 'passenger_home_ham_menu_state.dart';

/// A bloc that manages the state of a PassengerHomeHamMenu according to the event that is dispatched to it.
class PassengerHomeHamMenuBloc
    extends Bloc<PassengerHomeHamMenuEvent, PassengerHomeHamMenuState> {
  PassengerHomeHamMenuBloc(PassengerHomeHamMenuState initialState)
      : super(initialState) {
    on<PassengerHomeHamMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PassengerHomeHamMenuInitialEvent event,
    Emitter<PassengerHomeHamMenuState> emit,
  ) async {}
}
