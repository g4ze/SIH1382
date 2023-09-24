// ignore_for_file: must_be_immutable

part of 'ticket_booking_bloc.dart';

/// Represents the state of TicketBooking in the application.
class TicketBookingState extends Equatable {
  TicketBookingState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.ticketBookingModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  TicketBookingModel? ticketBookingModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        ticketBookingModelObj,
      ];
  TicketBookingState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    TicketBookingModel? ticketBookingModelObj,
  }) {
    return TicketBookingState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      ticketBookingModelObj:
          ticketBookingModelObj ?? this.ticketBookingModelObj,
    );
  }
}
