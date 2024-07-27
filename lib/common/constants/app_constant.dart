import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppConstant {
  const AppConstant._();

  // Design
  static const designDeviceWidth = 375.0;
  static const designDeviceHeight = 667.0;

  // Orientation
  static const mobileOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];
  static const tabletOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

  static const systemUiOverlay = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.green,
  );

  static const materialAppColor = Colors.green;
  static const materialAppTitle = 'Flutter Design Patterns';
  static const dpCreationalCategoryTitle = 'Creational';
  static const dpStructuralCategoryTitle = 'Structural';
  static const dpBehavioralCategoryTitle = 'Behavioral';
}
