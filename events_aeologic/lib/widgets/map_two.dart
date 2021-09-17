import 'package:events_aeologic/widgets/map_three.dart';
import 'package:flutter/material.dart';

class MapBottomCard extends StatelessWidget {
  final Color mapColor;
  final String mapFest;
  final String mapDistance;

  MapBottomCard(this.mapColor, this.mapFest, this.mapDistance);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Stack(
        // clipBehavior: Clip.none,
        children: [
          EventDots(mapColor),
          Positioned(
            right: 15,
            top: 15,
            child: Text(
              mapDistance,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 40,
            child: Text(
              mapFest,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://bit.ly/3tKHHT7'),
                      fit: BoxFit.fitWidth,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                SizedBox(
                  width: 5,
                  height: 5,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://bit.ly/3Epnfw0'),
                      fit: BoxFit.fitWidth,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                SizedBox(
                  width: 5,
                  height: 5,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(
                    child: Text(
                      "+7",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
