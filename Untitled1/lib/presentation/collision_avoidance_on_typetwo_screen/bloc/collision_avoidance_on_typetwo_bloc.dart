import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/collision_avoidance_on_typetwo_screen/models/collision_avoidance_on_typetwo_model.dart';
part 'collision_avoidance_on_typetwo_event.dart';
part 'collision_avoidance_on_typetwo_state.dart';

/// A bloc that manages the state of a CollisionAvoidanceOnTypetwo according to the event that is dispatched to it.
class CollisionAvoidanceOnTypetwoBloc extends Bloc<
    CollisionAvoidanceOnTypetwoEvent, CollisionAvoidanceOnTypetwoState> {
  CollisionAvoidanceOnTypetwoBloc(CollisionAvoidanceOnTypetwoState initialState)
      : super(initialState) {
    on<CollisionAvoidanceOnTypetwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CollisionAvoidanceOnTypetwoInitialEvent event,
    Emitter<CollisionAvoidanceOnTypetwoState> emit,
  ) async {}
}
