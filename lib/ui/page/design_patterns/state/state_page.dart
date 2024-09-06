import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../index.dart';

@RoutePage()
class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  late TrafficLightContext _trafficLight;
  late Timer _timer;
  late int _currentTime = 0;

  @override
  void initState() {
    super.initState();
    _trafficLight = TrafficLightContext(GreenState());
    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  void _startTimer() {
    _currentTime = _trafficLight.currentDuration.inSeconds;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime--;

        if (_currentTime == 0) {
          _trafficLight.nextTrafficLight();

          timer.cancel();
          _startTimer();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'State',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _trafficLight.currentColor,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                _currentTime.toString(),
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
