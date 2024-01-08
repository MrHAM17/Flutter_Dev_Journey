import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/job_type_screen/models/job_type_model.dart';
import '../models/jobtype_item_model.dart';

/// A provider class for the JobTypeScreen.
///
/// This provider manages the state of the JobTypeScreen, including the
/// current jobTypeModelObj

// ignore_for_file: must_be_immutable
class JobTypeProvider extends ChangeNotifier {
  JobTypeModel jobTypeModelObj = JobTypeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
