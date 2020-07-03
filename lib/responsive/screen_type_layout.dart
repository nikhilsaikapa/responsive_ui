import 'package:flutter/material.dart';
import 'package:responsive_ui/enums/device_screen_type.dart';
import 'package:responsive_ui/responsive/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenTypeLayout({Key key, this.mobile, this.tablet, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
          return desktop ?? mobile;
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.Tablet) {
          return tablet ?? mobile;
        } else {
          return mobile;
        }
      },
    );
  }
}
