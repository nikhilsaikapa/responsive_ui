import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_ui/datamodels/drawer_item_data.dart';
import 'package:responsive_ui/responsive/orientation_layout.dart';
import 'package:responsive_ui/responsive/screen_type_layout.dart';
import 'package:responsive_ui/widgets/drawer_option/drawer_option_mobile.dart';
import 'package:responsive_ui/widgets/drawer_option/drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;

  const DrawerOption({Key key, this.title, this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Provider<DrawerItemData>.value(
      value: DrawerItemData(title: title,iconData: iconData),
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait:(context) => DrawerOptionMobilePortrait(),
          landscape:(context) => DrawerOptionMobileLandscape(),
        ),
        tablet: OrientationLayout(
          portrait:(context) => DrawerOptionTabletPortrait(),
          landscape:(context) => DrawerOptionMobilePortrait(),
        ),
      ),
    );
  }
}
