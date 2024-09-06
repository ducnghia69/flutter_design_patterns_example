import 'dart:ui';

import '../state.dart';

abstract class ITrafficLightState {
  void nextTrafficLight(TrafficLightContext context);
  Color getColor();
  Duration getDuration();
}
