import 'package:flutter/material.dart';
import 'package:responsive_ui/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData) {
  var width = mediaQueryData.size.shortestSide;
  if (width > 950) {
    return DeviceScreenType.Desktop;
  } else if (width > 600) {
    return DeviceScreenType.Tablet;
  } else {
    return DeviceScreenType.Mobile;
  }
}
