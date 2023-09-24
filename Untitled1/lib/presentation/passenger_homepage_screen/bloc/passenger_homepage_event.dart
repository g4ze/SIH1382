// ignore_for_file: must_be_immutable

part of 'passenger_homepage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PassengerHomepage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PassengerHomepageEvent extends Equatable {}

/// Event that is dispatched when the PassengerHomepage widget is first created.
class PassengerHomepageInitialEvent extends PassengerHomepageEvent {
  @override
  List<Object?> get props => [];
}
