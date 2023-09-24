// ignore_for_file: must_be_immutable

part of 'collision_avoidance_off_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CollisionAvoidanceOff widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CollisionAvoidanceOffEvent extends Equatable {}

/// Event that is dispatched when the CollisionAvoidanceOff widget is first created.
class CollisionAvoidanceOffInitialEvent extends CollisionAvoidanceOffEvent {
  @override
  List<Object?> get props => [];
}
