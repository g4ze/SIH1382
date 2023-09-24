// ignore_for_file: must_be_immutable

part of 'passenger_home_bus_card_logged_out_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PassengerHomeBusCardLoggedOut widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PassengerHomeBusCardLoggedOutEvent extends Equatable {}

/// Event that is dispatched when the PassengerHomeBusCardLoggedOut widget is first created.
class PassengerHomeBusCardLoggedOutInitialEvent
    extends PassengerHomeBusCardLoggedOutEvent {
  @override
  List<Object?> get props => [];
}
