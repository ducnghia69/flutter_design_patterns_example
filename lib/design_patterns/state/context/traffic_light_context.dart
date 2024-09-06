import 'package:flutter/material.dart';

import '../state.dart';

class TrafficLightContext {
  ITrafficLightState _state;

  TrafficLightContext(this._state);

  Color get currentColor => _state.getColor();
  Duration get currentDuration => _state.getDuration();

  void setState(ITrafficLightState state) {
    _state = state;
  }

  void nextTrafficLight() {
    _state.nextTrafficLight(this);
  }
}
