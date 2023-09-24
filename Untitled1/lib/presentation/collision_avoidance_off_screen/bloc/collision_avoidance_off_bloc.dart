import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/collision_avoidance_off_screen/models/collision_avoidance_off_model.dart';
part 'collision_avoidance_off_event.dart';
part 'collision_avoidance_off_state.dart';

/// A bloc that manages the state of a CollisionAvoidanceOff according to the event that is dispatched to it.
class CollisionAvoidanceOffBloc
    extends Bloc<CollisionAvoidanceOffEvent, CollisionAvoidanceOffState> {
  CollisionAvoidanceOffBloc(CollisionAvoidanceOffState initialState)
      : super(initialState) {
    on<CollisionAvoidanceOffInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CollisionAvoidanceOffInitialEvent event,
    Emitter<CollisionAvoidanceOffState> emit,
  ) async {}
}
