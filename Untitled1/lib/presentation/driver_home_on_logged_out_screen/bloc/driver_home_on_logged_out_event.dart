// ignore_for_file: must_be_immutable

part of 'driver_home_on_logged_out_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DriverHomeOnLoggedOut widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DriverHomeOnLoggedOutEvent extends Equatable {}

/// Event that is dispatched when the DriverHomeOnLoggedOut widget is first created.
class DriverHomeOnLoggedOutInitialEvent extends DriverHomeOnLoggedOutEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends DriverHomeOnLoggedOutEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
