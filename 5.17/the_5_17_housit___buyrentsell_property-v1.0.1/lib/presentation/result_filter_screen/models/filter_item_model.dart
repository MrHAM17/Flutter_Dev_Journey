import '../../../core/app_export.dart';/// This class is used in the [filter_item_widget] screen.
class FilterItemModel {FilterItemModel({this.buttonFilter, this.isSelected, }) { buttonFilter = buttonFilter  ?? "House";isSelected = isSelected  ?? false; }

String? buttonFilter;

bool? isSelected;

 }
