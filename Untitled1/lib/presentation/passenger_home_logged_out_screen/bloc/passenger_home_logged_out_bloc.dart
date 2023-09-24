import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tripdetails1_item_model.dart';
import 'package:manav_s_application/presentation/passenger_home_logged_out_screen/models/passenger_home_logged_out_model.dart';
part 'passenger_home_logged_out_event.dart';
part 'passenger_home_logged_out_state.dart';

/// A bloc that manages the state of a PassengerHomeLoggedOut according to the event that is dispatched to it.
class PassengerHomeLoggedOutBloc
    extends Bloc<PassengerHomeLoggedOutEvent, PassengerHomeLoggedOutState> {
  PassengerHomeLoggedOutBloc(PassengerHomeLoggedOutState initialState)
      : super(initialState) {
    on<PassengerHomeLoggedOutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PassengerHomeLoggedOutInitialEvent event,
    Emitter<PassengerHomeLoggedOutState> emit,
  ) async {
    emit(state.copyWith(
        passengerHomeLoggedOutModelObj: state.passengerHomeLoggedOutModelObj
            ?.copyWith(tripdetails1ItemList: fillTripdetails1ItemList())));
  }

  List<Tripdetails1ItemModel> fillTripdetails1ItemList() {
    return List.generate(5, (index) => Tripdetails1ItemModel());
  }
}
