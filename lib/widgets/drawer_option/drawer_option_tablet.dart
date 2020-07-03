import 'package:flutter/material.dart';
import 'package:responsive_ui/datamodels/drawer_item_data.dart';
import 'package:responsive_ui/widgets/base_model_widget.dart';

class DrawerOptionTabletPortrait extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData drawerItemData) {
    return Container(
      width: 152,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(drawerItemData.iconData,size: 45,),
          Text(drawerItemData.title,style: TextStyle(fontSize: 20.0),)
        ],
      ),
    );
  }
}