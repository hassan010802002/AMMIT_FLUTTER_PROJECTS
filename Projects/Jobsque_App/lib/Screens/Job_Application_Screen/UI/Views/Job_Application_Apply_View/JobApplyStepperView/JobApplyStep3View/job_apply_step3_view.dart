
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyUploadCVContainerWidget/job_apply_upload_c_v_container_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyUploadCvTextWidget/job_apply_upload_cv_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyUploadOtherFileContainerWidget/job_apply_upload_other_file_container_widget.dart';
import '../../../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../../../Controllers/Application_Controller/application_cubit.dart';
import '../../../../Widgets/JobApplyOtherFileTextWidget/job_apply_other_file_text_widget.dart';
import '../../../../Widgets/JobApplyStepTextWidget/job_apply_step_text_widget.dart';
import '../../../../Widgets/JobApplyUploadPortfolioTextWidget/job_apply_upload_portfolio_text_widget.dart';

class JobApplyStep3View extends StatefulWidget {
  final ApplicationCubit applicationCubitController;

  const JobApplyStep3View({super.key, required this.applicationCubitController});

  @override
  _JobApplyStep3ViewState createState() => _JobApplyStep3ViewState();
}

class _JobApplyStep3ViewState extends State<JobApplyStep3View> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        primary: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JobApplyUploadPortfolioTextWidget(),
            const JobApplyStepTextWidget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 35.0.h,
            ),
            const JobApplyUploadCvTextWidget(),
            SizedBox(
              height: 10.0.h,
            ),
            JobApplyUploadCVContainerWidget(applicationCubitController: widget.applicationCubitController),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 35.0.h,
            ),
            const JobApplyOtherFileTextWidget(),
            SizedBox(
              height: 10.0.h,
            ),
            JobApplyUploadOtherFileContainerWidget(applicationCubitController: widget.applicationCubitController),
          ],
        ),
      ),
    );
  }
}
