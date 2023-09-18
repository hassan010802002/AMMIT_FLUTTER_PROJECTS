import 'package:flutter/material.dart';

class MyMovie_Details extends StatelessWidget {
  const MyMovie_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Movie_Details_Screen(),
    );
  }
}

class Movie_Details_Screen extends StatefulWidget {
  const Movie_Details_Screen({super.key});

  @override
  State<StatefulWidget> createState() => _Movie_Details_Screen_State();
}

class _Movie_Details_Screen_State extends State<Movie_Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [],
          )
        ],
      ),
    );
  }
}
