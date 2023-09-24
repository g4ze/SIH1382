// ignore_for_file: must_be_immutable

part of 'driver_home_on_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DriverHomeOn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DriverHomeOnEvent extends Equatable {}

/// Event that is dispatched when the DriverHomeOn widget is first created.
class DriverHomeOnInitialEvent extends DriverHomeOnEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends DriverHomeOnEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
