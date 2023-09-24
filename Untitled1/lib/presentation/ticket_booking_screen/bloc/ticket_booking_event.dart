// ignore_for_file: must_be_immutable

part of 'ticket_booking_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TicketBooking widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TicketBookingEvent extends Equatable {}

/// Event that is dispatched when the TicketBooking widget is first created.
class TicketBookingInitialEvent extends TicketBookingEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends TicketBookingEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends TicketBookingEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
