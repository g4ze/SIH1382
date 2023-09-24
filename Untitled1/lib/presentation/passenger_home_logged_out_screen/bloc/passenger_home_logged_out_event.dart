// ignore_for_file: must_be_immutable

part of 'passenger_home_logged_out_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PassengerHomeLoggedOut widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PassengerHomeLoggedOutEvent extends Equatable {}

/// Event that is dispatched when the PassengerHomeLoggedOut widget is first created.
class PassengerHomeLoggedOutInitialEvent extends PassengerHomeLoggedOutEvent {
  @override
  List<Object?> get props => [];
}
