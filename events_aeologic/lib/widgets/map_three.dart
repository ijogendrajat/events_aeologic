import 'package:flutter/material.dart';

class EventDots extends StatelessWidget {
  final Color dotcolor;
  EventDots(this.dotcolor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          Center(
            child: Card(
              elevation: 0,
              shape: CircleBorder(),
              child: Container(
                width: 25,
                height: 25,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: dotcolor),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 0,
              shape: CircleBorder(),
              child: Container(
                width: 20,
                height: 20,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 0,
              shape: CircleBorder(),
              child: Container(
                width: 15,
                height: 15,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: dotcolor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
