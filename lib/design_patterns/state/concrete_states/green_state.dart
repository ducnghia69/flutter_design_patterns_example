import 'package:flutter/material.dart';

import '../state.dart';

class GreenState extends ITrafficLightState {
  @override
  void nextTrafficLight(TrafficLightContext context) {
    context.setState(YellowState());
  }

  @override
  Color getColor() {
    return Colors.green;
  }

  @override
  Duration getDuration() {
    return const Duration(seconds: 15);
  }
}
