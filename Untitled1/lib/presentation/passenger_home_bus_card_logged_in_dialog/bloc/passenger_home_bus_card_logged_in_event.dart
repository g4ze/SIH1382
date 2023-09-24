// ignore_for_file: must_be_immutable

part of 'passenger_home_bus_card_logged_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PassengerHomeBusCardLoggedIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PassengerHomeBusCardLoggedInEvent extends Equatable {}

/// Event that is dispatched when the PassengerHomeBusCardLoggedIn widget is first created.
class PassengerHomeBusCardLoggedInInitialEvent
    extends PassengerHomeBusCardLoggedInEvent {
  @override
  List<Object?> get props => [];
}
