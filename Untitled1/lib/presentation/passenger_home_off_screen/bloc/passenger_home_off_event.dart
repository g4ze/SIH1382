// ignore_for_file: must_be_immutable

part of 'passenger_home_off_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PassengerHomeOff widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PassengerHomeOffEvent extends Equatable {}

/// Event that is dispatched when the PassengerHomeOff widget is first created.
class PassengerHomeOffInitialEvent extends PassengerHomeOffEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends PassengerHomeOffEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
