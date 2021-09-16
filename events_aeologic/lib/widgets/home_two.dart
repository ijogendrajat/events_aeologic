import 'package:flutter/material.dart';

class UpcomingEventsCard extends StatefulWidget {
  const UpcomingEventsCard({Key? key}) : super(key: key);

  @override
  _UpcomingEventsCardState createState() => _UpcomingEventsCardState();
}

class _UpcomingEventsCardState extends State<UpcomingEventsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 300,
      height: 200,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(10),
      //   ),
      // ),
    );
  }
}
