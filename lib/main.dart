import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/views/home_view.dart';

void main() => runApp(DevicePreview(
      builder: (context) => MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
