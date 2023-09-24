// ignore_for_file: must_be_immutable

part of 'passenger_home_on_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PassengerHomeOn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PassengerHomeOnEvent extends Equatable {}

/// Event that is dispatched when the PassengerHomeOn widget is first created.
class PassengerHomeOnInitialEvent extends PassengerHomeOnEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends PassengerHomeOnEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
