import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Popular_Topics extends StatefulWidget {
  @override
  _Popular_TopicsState createState() => _Popular_TopicsState();
}

class _Popular_TopicsState extends State<Popular_Topics> {
  List toppics = [
    "Flight ticket refund&change policy of different airlines 1 (applies to the flight number begins with a NUMBER or a LETTER from A to N)",
    "What is airline voucher?",
    "Airline voucher usage, issue method & arrival time",
    "When will I receive refund?",
    "How do I cancel or change my flight booking?",
    "What are the age categories for child and infant passengers? Can I book tickets for children and infants online?",
    "How do I select a seat in advance, purchase extra baggage allowance, make other special requests?",
    "What is the (free) check-in baggage allowance for my flight?",
    "What should I do if I have a special room request (e.g. non-smoking room or king-size bed)?",
    "Does the hotel need a deposit or payment in advance?",
    "How can I change or cancel my hotel reservation?",
    "Can I add guests to my current hotel booking?",
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
            "Popular Topics",
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: ListView(
        children: [
          for (var index in toppics)
            Container(
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
                  index.toString(),
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
                      "Please pay attention to the latest airline policy (continuously updated) and contact us later. Once your ticket complies with the full refund policy, we will update it in your booking so that you can apply for full refund by yourself. If cancellation fee is still displayed and the departure date is within 48 hrs, please contact 24-hour customer service hotline, thanks for your support and understanding.",
                      style: TextStyle(
                        fontSize: 13,
                        color: kGrey500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
