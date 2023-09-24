// ignore_for_file: must_be_immutable

part of 'collision_avoidance_on_typetwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CollisionAvoidanceOnTypetwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CollisionAvoidanceOnTypetwoEvent extends Equatable {}

/// Event that is dispatched when the CollisionAvoidanceOnTypetwo widget is first created.
class CollisionAvoidanceOnTypetwoInitialEvent
    extends CollisionAvoidanceOnTypetwoEvent {
  @override
  List<Object?> get props => [];
}
