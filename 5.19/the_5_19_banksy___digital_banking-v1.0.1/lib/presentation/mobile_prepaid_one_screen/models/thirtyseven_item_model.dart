import '../../../core/app_export.dart';

/// This class is used in the [thirtyseven_item_widget] screen.
class ThirtysevenItemModel {
  ThirtysevenItemModel({
    this.belgeman,
    this.jenningsChamplin,
    this.jenningsChamplin1,
    this.id,
  }) {
    belgeman = belgeman ?? ImageConstant.imgOval1;
    jenningsChamplin = jenningsChamplin ?? "Belgeman";
    jenningsChamplin1 = jenningsChamplin1 ?? "AC : 159-107-1396";
    id = id ?? "";
  }

  String? belgeman;

  String? jenningsChamplin;

  String? jenningsChamplin1;

  String? id;
}
