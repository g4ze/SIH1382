// ignore_for_file: must_be_immutable

part of 'collision_avoidance_on_typetwo_bloc.dart';

/// Represents the state of CollisionAvoidanceOnTypetwo in the application.
class CollisionAvoidanceOnTypetwoState extends Equatable {
  CollisionAvoidanceOnTypetwoState({this.collisionAvoidanceOnTypetwoModelObj});

  CollisionAvoidanceOnTypetwoModel? collisionAvoidanceOnTypetwoModelObj;

  @override
  List<Object?> get props => [
        collisionAvoidanceOnTypetwoModelObj,
      ];
  CollisionAvoidanceOnTypetwoState copyWith(
      {CollisionAvoidanceOnTypetwoModel? collisionAvoidanceOnTypetwoModelObj}) {
    return CollisionAvoidanceOnTypetwoState(
      collisionAvoidanceOnTypetwoModelObj:
          collisionAvoidanceOnTypetwoModelObj ??
              this.collisionAvoidanceOnTypetwoModelObj,
    );
  }
}
