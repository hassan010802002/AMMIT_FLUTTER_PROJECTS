import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsAboutCompanyTextWidget extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsAboutCompanyTextWidget({Key? key, required this.detailsCubitController}) : super(key: key);

  @override
  _JobDetailsAboutCompanyTextWidgetState createState() => _JobDetailsAboutCompanyTextWidgetState();
}

class _JobDetailsAboutCompanyTextWidgetState extends State<JobDetailsAboutCompanyTextWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        if (widget.detailsCubitController!.isSuccessJobData) {
          return Text(
                widget.detailsCubitController!.currentJobDetailsData!.aboutComp!,
                softWrap: true,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: const Color(0xff4B5563),
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/26.0.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: TextFontFamily,
                ),
              );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
