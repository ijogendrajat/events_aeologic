import 'package:events_aeologic/widgets/map_three.dart';
import 'package:flutter/material.dart';

class MapPoint extends StatelessWidget {
  final Color mapPointColor;
  MapPoint(this.mapPointColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Stack(
        children: [
          Center(
            child: Card(
              elevation: 2,
              shape: CircleBorder(),
              child: Container(
                width: 50,
                height: 50,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
            ),
          ),
          Center(child: EventDots(mapPointColor))
        ],
      ),
    );
  }
}
