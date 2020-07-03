import 'package:flutter/material.dart';
import 'package:responsive_ui/datamodels/drawer_item_data.dart';
import 'package:responsive_ui/widgets/base_model_widget.dart';

class DrawerOptionMobilePortrait extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData drawerItemData) {
    return Container(
      padding: const EdgeInsets.only(left: 25.0),
      height: 80,
      child: Row(
        children: <Widget>[
          Icon(
            drawerItemData.iconData,
            size: 25,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            drawerItemData.title,
            style: TextStyle(fontSize: 21.0),
          )
        ],
      ),
    );
  }
}

class DrawerOptionMobileLandscape extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData drawerItemData) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Icon(drawerItemData.iconData),
    );
  }
}
