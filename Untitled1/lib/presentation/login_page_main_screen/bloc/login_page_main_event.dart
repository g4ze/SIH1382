// ignore_for_file: must_be_immutable

part of 'login_page_main_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageMain widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageMainEvent extends Equatable {}

/// Event that is dispatched when the LoginPageMain widget is first created.
class LoginPageMainInitialEvent extends LoginPageMainEvent {
  @override
  List<Object?> get props => [];
}
