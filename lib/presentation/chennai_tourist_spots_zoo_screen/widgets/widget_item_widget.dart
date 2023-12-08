import '../models/widget_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  WidgetItemWidget(
    this.widgetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetItemModel widgetItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle32,
        height: 191.v,
        width: 321.h,
        radius: BorderRadius.circular(
          20.h,
        ),
      ),
    );
  }
}
