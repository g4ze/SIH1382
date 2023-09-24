// ignore_for_file: must_be_immutable

part of 'collision_avoidance_off_bloc.dart';

/// Represents the state of CollisionAvoidanceOff in the application.
class CollisionAvoidanceOffState extends Equatable {
  CollisionAvoidanceOffState({this.collisionAvoidanceOffModelObj});

  CollisionAvoidanceOffModel? collisionAvoidanceOffModelObj;

  @override
  List<Object?> get props => [
        collisionAvoidanceOffModelObj,
      ];
  CollisionAvoidanceOffState copyWith(
      {CollisionAvoidanceOffModel? collisionAvoidanceOffModelObj}) {
    return CollisionAvoidanceOffState(
      collisionAvoidanceOffModelObj:
          collisionAvoidanceOffModelObj ?? this.collisionAvoidanceOffModelObj,
    );
  }
}
