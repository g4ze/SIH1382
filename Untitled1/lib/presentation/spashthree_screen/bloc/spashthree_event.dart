// ignore_for_file: must_be_immutable

part of 'spashthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Spashthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SpashthreeEvent extends Equatable {}

/// Event that is dispatched when the Spashthree widget is first created.
class SpashthreeInitialEvent extends SpashthreeEvent {
  @override
  List<Object?> get props => [];
}
