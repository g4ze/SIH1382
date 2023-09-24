import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/spashone_screen/models/spashone_model.dart';
part 'spashone_event.dart';
part 'spashone_state.dart';

/// A bloc that manages the state of a Spashone according to the event that is dispatched to it.
class SpashoneBloc extends Bloc<SpashoneEvent, SpashoneState> {
  SpashoneBloc(SpashoneState initialState) : super(initialState) {
    on<SpashoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpashoneInitialEvent event,
    Emitter<SpashoneState> emit,
  ) async {}
}
