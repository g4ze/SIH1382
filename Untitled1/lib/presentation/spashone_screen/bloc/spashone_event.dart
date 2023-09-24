// ignore_for_file: must_be_immutable

part of 'spashone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Spashone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SpashoneEvent extends Equatable {}

/// Event that is dispatched when the Spashone widget is first created.
class SpashoneInitialEvent extends SpashoneEvent {
  @override
  List<Object?> get props => [];
}
