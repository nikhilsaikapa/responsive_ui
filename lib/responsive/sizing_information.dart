import 'package:flutter/material.dart';
import 'package:responsive_ui/enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {this.orientation,
      this.deviceScreenType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {
    return 'Orientation:$orientation\nScreenType:$deviceScreenType\nScreenSize:$screenSize\nLocalWidgetSize:$localWidgetSize\n';
  }
}
