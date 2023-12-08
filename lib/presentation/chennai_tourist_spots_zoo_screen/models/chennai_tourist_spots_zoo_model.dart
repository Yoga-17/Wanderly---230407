// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'widget_item_model.dart';

/// This class defines the variables used in the [chennai_tourist_spots_zoo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChennaiTouristSpotsZooModel extends Equatable {
  ChennaiTouristSpotsZooModel({this.widgetItemList = const []}) {}

  List<WidgetItemModel> widgetItemList;

  ChennaiTouristSpotsZooModel copyWith(
      {List<WidgetItemModel>? widgetItemList}) {
    return ChennaiTouristSpotsZooModel(
      widgetItemList: widgetItemList ?? this.widgetItemList,
    );
  }

  @override
  List<Object?> get props => [widgetItemList];
}
