import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/app_constants.dart';

class ScreenSize {
  static final ScreenSize _instance = ScreenSize._init();

  ScreenSize._init();

  factory ScreenSize() {
    return _instance;
  }

  factory ScreenSize.init() {
    final window = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);
    _instance.screenSize = window.size;
    _instance.topPadding = window.padding.top;
    _instance.bottomPadding = window.padding.bottom;

    return _instance;
  }

  late Size screenSize;
  late double topPadding;
  late double bottomPadding;

  double getHeight(num height) => (screenSize.height * height) / AppConstants.mobileSize.height;
  double getWidth(num width) => (screenSize.width * width) / AppConstants.mobileSize.width;

  double getHeightPercent(double percent) => screenSize.height * percent;
  double getWidthPercent(double percent) => screenSize.width * percent;
}
