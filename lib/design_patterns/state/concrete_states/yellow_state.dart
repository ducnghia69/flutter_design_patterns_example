import 'package:flutter/material.dart';

import '../state.dart';

class YellowState extends ITrafficLightState {
  @override
  void nextTrafficLight(TrafficLightContext context) {
    context.setState(RedState());
  }

  @override
  Color getColor() {
    return Colors.yellow;
  }

  @override
  Duration getDuration() {
    return const Duration(seconds: 3);
  }
}
