// ignore_for_file: must_be_immutable

part of 'lost_and_found_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LostAndFound widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LostAndFoundEvent extends Equatable {}

/// Event that is dispatched when the LostAndFound widget is first created.
class LostAndFoundInitialEvent extends LostAndFoundEvent {
  @override
  List<Object?> get props => [];
}
