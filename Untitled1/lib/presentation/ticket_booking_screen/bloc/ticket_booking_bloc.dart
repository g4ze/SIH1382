import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/ticket_booking_screen/models/ticket_booking_model.dart';
part 'ticket_booking_event.dart';
part 'ticket_booking_state.dart';

/// A bloc that manages the state of a TicketBooking according to the event that is dispatched to it.
class TicketBookingBloc extends Bloc<TicketBookingEvent, TicketBookingState> {
  TicketBookingBloc(TicketBookingState initialState) : super(initialState) {
    on<TicketBookingInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _onInitialize(
    TicketBookingInitialEvent event,
    Emitter<TicketBookingState> emit,
  ) async {
    emit(state.copyWith(
        ticketBookingModelObj: state.ticketBookingModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<TicketBookingState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<TicketBookingState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
