// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Helpers/LocationCountry_Helper/LocationCountry_Helper.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Widgets/Country_Widget/country_widget.dart';

import '../../../Controller/location_cubit.dart';

class LocationCountriesView extends StatefulWidget {
  final LocationCubit cubit;

  const LocationCountriesView({Key? key, required this.cubit}) : super(key: key);

  @override
  _LocationCountriesViewState createState() => _LocationCountriesViewState();
}

class _LocationCountriesViewState extends State<LocationCountriesView> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: LocationCountryHelper.locationCountries
          .map((e) => CountryWidget(cubit: widget.cubit, index: LocationCountryHelper.locationCountries.indexOf(e)))
          .toList(),
    );
  }
}
