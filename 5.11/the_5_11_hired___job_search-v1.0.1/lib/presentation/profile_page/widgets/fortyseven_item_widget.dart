import '../models/fortyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';

// ignore: must_be_immutable
class FortysevenItemWidget extends StatelessWidget {
  FortysevenItemWidget(
    this.fortysevenItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  FortysevenItemModel fortysevenItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        fortysevenItemModelObj.skills!,
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: (fortysevenItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      selectedColor: Colors.transparent,
      shape: (fortysevenItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray100,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                22.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray300,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                22.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
