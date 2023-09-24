// ignore_for_file: must_be_immutable

part of 'login_page_driver_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageDriver widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageDriverEvent extends Equatable {}

/// Event that is dispatched when the LoginPageDriver widget is first created.
class LoginPageDriverInitialEvent extends LoginPageDriverEvent {
  @override
  List<Object?> get props => [];
}
