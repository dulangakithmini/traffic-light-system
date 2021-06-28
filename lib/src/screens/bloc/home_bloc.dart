import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<BlockEventBase, HomeState> {
  HomeBloc()
      : super(HomeState(isRedOn: false, isYellowOn: false, isGreenOn: false));

  @override
  Stream<HomeState> mapEventToState(BlockEventBase event) async* {
    if (event is StopEvent) {
      yield HomeState(isRedOn: true, isYellowOn: false, isGreenOn: false);
    } else if (event is ReadyToStopEvent) {
      yield HomeState(isYellowOn: true, isRedOn: false, isGreenOn: false);
    } else if (event is GoEvent) {
      yield HomeState(isGreenOn: true, isYellowOn: false, isRedOn: false);
    } else if (event is ReadyToGoEvent) {
      yield HomeState(isRedOn: true, isYellowOn: true, isGreenOn: false);
    }
  }
}

/// states
class HomeState {
  final bool isRedOn;
  final bool isYellowOn;
  final bool isGreenOn;

  HomeState({
    @required this.isRedOn,
    @required this.isGreenOn,
    @required this.isYellowOn,
  });
}

abstract class BlockEventBase {}

class StopEvent extends BlockEventBase {}

class ReadyToStopEvent extends BlockEventBase {}

class GoEvent extends BlockEventBase {}

class ReadyToGoEvent extends BlockEventBase {}
