// ignore_for_file: must_be_immutable

part of 'passenger_home_ham_menu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PassengerHomeHamMenu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PassengerHomeHamMenuEvent extends Equatable {}

/// Event that is dispatched when the PassengerHomeHamMenu widget is first created.
class PassengerHomeHamMenuInitialEvent extends PassengerHomeHamMenuEvent {
  @override
  List<Object?> get props => [];
}
