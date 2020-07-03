import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive/orientation_layout.dart';
import 'package:responsive_ui/responsive/screen_type_layout.dart';
import 'package:responsive_ui/viewmodels/home_view_model.dart';
import 'package:responsive_ui/views/home_view_mobile.dart';
import 'package:responsive_ui/views/home_view_tablet.dart';
import 'package:responsive_ui/widgets/base_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (context) {
        return ScreenTypeLayout(
          mobile: OrientationLayout(
            portrait: (context) => HomeMobilePortrait(),
            landscape: (context) => HomeMobileLandscape(),
          ),
          tablet: HomeViewTablet(),
        );
      },
    );
  }
}
