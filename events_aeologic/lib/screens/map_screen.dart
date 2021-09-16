import 'package:events_aeologic/widgets/map_one.dart';
import 'package:events_aeologic/widgets/map_two.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/map.png"),
                fit: BoxFit.fitHeight),
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 40,
                left: 35,
                child: DistanceTopBar(),
              ),
              Positioned(
                bottom: 100,
                left: 30,
                child: MapBottomCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
