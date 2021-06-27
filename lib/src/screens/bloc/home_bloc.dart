import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<BlockEventBase, HomeState> {
  @override
  Stream<HomeState> mapEventToState(BlockEventBase event) async* {
    if (event is ChangeRedLightEvent) {
      yield HomeState(isLightOn: true);
    } else if (event is ChangeYellowLightEvent) {
      yield HomeState(isLightOn: true);
    } else if (event is ChangeGreenLightEvent) {
      yield HomeState(isLightOn: true);
    }
  }
}

class HomeState {
  final bool isLightOn;

  HomeState({
    @required this.isLightOn,
  });
}

abstract class BlockEventBase {}

class ChangeRedLightEvent extends BlockEventBase {}

class ChangeYellowLightEvent extends BlockEventBase {}

class ChangeGreenLightEvent extends BlockEventBase {}
