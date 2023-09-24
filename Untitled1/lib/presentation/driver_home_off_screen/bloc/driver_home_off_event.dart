// ignore_for_file: must_be_immutable

part of 'driver_home_off_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DriverHomeOff widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DriverHomeOffEvent extends Equatable {}

/// Event that is dispatched when the DriverHomeOff widget is first created.
class DriverHomeOffInitialEvent extends DriverHomeOffEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends DriverHomeOffEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
