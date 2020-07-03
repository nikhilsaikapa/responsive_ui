import 'package:flutter/material.dart';
import 'package:responsive_ui/viewmodels/home_view_model.dart';
import 'package:responsive_ui/widgets/app_drawer/app_drawer.dart';
import 'package:responsive_ui/widgets/base_model_widget.dart';

class HomeViewTablet extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context,HomeViewModel model) {
    var children = [
      Expanded(
        child: Center(child: Text(model.title),),
      ),
      AppDrawer(),
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait
          ? Column(
              children: children,
            )
          : Row(
              children: children.reversed.toList(),
            ),
    );
  }
}
