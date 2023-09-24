// ignore_for_file: must_be_immutable

part of 'spashtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Spashtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SpashtwoEvent extends Equatable {}

/// Event that is dispatched when the Spashtwo widget is first created.
class SpashtwoInitialEvent extends SpashtwoEvent {
  @override
  List<Object?> get props => [];
}
