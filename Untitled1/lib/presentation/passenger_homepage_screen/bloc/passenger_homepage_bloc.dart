import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tripdetails_item_model.dart';
import 'package:manav_s_application/presentation/passenger_homepage_screen/models/passenger_homepage_model.dart';
part 'passenger_homepage_event.dart';
part 'passenger_homepage_state.dart';

/// A bloc that manages the state of a PassengerHomepage according to the event that is dispatched to it.
class PassengerHomepageBloc
    extends Bloc<PassengerHomepageEvent, PassengerHomepageState> {
  PassengerHomepageBloc(PassengerHomepageState initialState)
      : super(initialState) {
    on<PassengerHomepageInitialEvent>(_onInitialize);
  }

  List<TripdetailsItemModel> fillTripdetailsItemList() {
    return List.generate(5, (index) => TripdetailsItemModel());
  }

  _onInitialize(
    PassengerHomepageInitialEvent event,
    Emitter<PassengerHomepageState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        passengerHomepageModelObj: state.passengerHomepageModelObj?.copyWith(
      tripdetailsItemList: fillTripdetailsItemList(),
    )));
  }
}
