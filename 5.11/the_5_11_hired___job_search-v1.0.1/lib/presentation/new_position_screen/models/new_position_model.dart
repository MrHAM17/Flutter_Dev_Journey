import 'package:the_5_11_hired___job_search/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

class NewPositionModel {
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];

  DateTime? selectedSmallLabelRegular;

  String smallLabelRegular = "Select Date";

  DateTime? selectedSmallLabelRegular1;

  String smallLabelRegular1 = "Select Date";
}
