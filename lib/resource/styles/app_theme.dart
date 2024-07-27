
import 'package:flutter/material.dart';

import 'app_color.dart';

extension ThemeDataExtensions on ThemeData {
  static final Map<AppThemeType, AppColor> _appColorMap = {};

  void addAppColor({
    required AppThemeType type,
    required AppColor appColor,
  }) {
    _appColorMap[type] = appColor;
  }

  AppColor get appColor {
    return _appColorMap[AppThemeSetting.currentAppThemeType] ?? AppColor.defaultAppColor;
  }
}

enum AppThemeType { light, dark }


class AppThemeSetting {
  const AppThemeSetting._();
  static AppThemeType currentAppThemeType = AppThemeType.light;
}
