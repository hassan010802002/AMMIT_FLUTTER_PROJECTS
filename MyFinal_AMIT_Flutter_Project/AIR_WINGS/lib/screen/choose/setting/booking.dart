import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  List<Map<String, dynamic>> booking = [
    {"Booking": "How do I book a flight?"},
    {"Booking": "How do I cancel or change my flight booking?"},
    {
      "Booking":
          "What are the age categories for child and infant passengers? Can I book tickets for children and infants online?"
    },
    {"Booking": "How do I check in online?"},
    {"Booking": "How will I know when my booking has been confirmed?"},
    {
      "Booking":
          "How long after I submit my booking will my ticket(s) be issued?"
    },
    {
      "Booking":
          "What documentation do I need to present at the airport check-in counter to get my boarding pass?"
    },
    {"Booking": "What if I submit my booking more than once?"},
    {
      "Booking":
          "What are the policies for tickets tagged with \"Multi-booking\"?"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: kBlack,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('Booking'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: ListView.builder(
        itemCount: booking.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.03,
            ),
            decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(
                width: 0,
                color: kWhite,
              ),
              boxShadow: [
                BoxShadow(
                  color: kGrey200,
                  // spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(10, 0),
                ),
              ],
            ),
            child: ExpansionCard(
              backgroundColor: kWhite,
              margin: const EdgeInsets.only(
                top: 0,
              ),
              title: Text(
                booking[index]["Booking"],
                style: TextStyle(
                  fontSize: 17,
                  color: kBlack,
                ),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: displaySize(context).width * 0.05,
                    right: displaySize(context).width * 0.05,
                    top: displaySize(context).height * 0.02,
                    bottom: displaySize(context).height * 0.01,
                  ),
                  child: Text(
                    "To book a flight, please contact our website or app. Select the Flights tab to search, select, and book your flight. Once your booking is completed, we will send you a confirmation email.",
                    style: TextStyle(
                      fontSize: 13,
                      color: kGrey500,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
