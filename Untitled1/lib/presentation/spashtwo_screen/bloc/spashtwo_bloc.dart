import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/spashtwo_screen/models/spashtwo_model.dart';
part 'spashtwo_event.dart';
part 'spashtwo_state.dart';

/// A bloc that manages the state of a Spashtwo according to the event that is dispatched to it.
class SpashtwoBloc extends Bloc<SpashtwoEvent, SpashtwoState> {
  SpashtwoBloc(SpashtwoState initialState) : super(initialState) {
    on<SpashtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpashtwoInitialEvent event,
    Emitter<SpashtwoState> emit,
  ) async {}
}
