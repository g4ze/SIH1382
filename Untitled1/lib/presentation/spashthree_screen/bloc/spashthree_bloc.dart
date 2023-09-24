import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/spashthree_screen/models/spashthree_model.dart';
part 'spashthree_event.dart';
part 'spashthree_state.dart';

/// A bloc that manages the state of a Spashthree according to the event that is dispatched to it.
class SpashthreeBloc extends Bloc<SpashthreeEvent, SpashthreeState> {
  SpashthreeBloc(SpashthreeState initialState) : super(initialState) {
    on<SpashthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpashthreeInitialEvent event,
    Emitter<SpashthreeState> emit,
  ) async {}
}
