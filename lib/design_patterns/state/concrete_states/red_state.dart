import 'package:flutter/material.dart';

import '../state.dart';

class RedState implements ITrafficLightState {
  @override
  void nextTrafficLight(TrafficLightContext context) {
    context.setState(GreenState());
  }

  @override
  Color getColor() {
    return Colors.red;
  }

  @override
  Duration getDuration() {
    return const Duration(seconds: 20);
  }
}
