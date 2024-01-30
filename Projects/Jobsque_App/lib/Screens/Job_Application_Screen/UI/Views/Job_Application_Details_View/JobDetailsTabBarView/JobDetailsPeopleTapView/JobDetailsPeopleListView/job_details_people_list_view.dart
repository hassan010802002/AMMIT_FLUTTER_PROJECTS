// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Helpers/JobDetailsPeopleListHelper/JobDetailsPeopleListHelper.dart';
import '../../../../../Widgets/JobDetailsPeopleListTileWidget/job_details_people_list_tile_widget.dart';

class JobDetailsPeopleListView extends StatefulWidget {
  const JobDetailsPeopleListView({Key? key}) : super(key: key);

  @override
  _JobDetailsPeopleListViewState createState() => _JobDetailsPeopleListViewState();
}

class _JobDetailsPeopleListViewState extends State<JobDetailsPeopleListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: true,
      shrinkWrap: true,
      itemCount: JobDetailsPeopleListHelper.peopleNames!.length,
      itemBuilder: (BuildContext context, int index) {
        return JobDetailsPeopleListTileWidget(index: index);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: Color(0xffE5E7EB),
          thickness: 1.5,
        );
      },
    );
  }
}
