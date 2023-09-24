// ignore_for_file: must_be_immutable

part of 'driver_home_on_logged_out_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DriverHomeOnLoggedOutOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DriverHomeOnLoggedOutOneEvent extends Equatable {}

/// Event that is dispatched when the DriverHomeOnLoggedOutOne widget is first created.
class DriverHomeOnLoggedOutOneInitialEvent
    extends DriverHomeOnLoggedOutOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends DriverHomeOnLoggedOutOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
