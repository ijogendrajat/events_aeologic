import 'package:events_aeologic/screens/home_screen.dart';
import 'package:events_aeologic/widgets/map_one.dart';
import 'package:events_aeologic/widgets/map_point.dart';
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
              //Events nearby start
              Positioned(
                top: 150,
                left: 100,
                child: MapPoint(Colors.blue),
              ),
              Positioned(
                top: 150,
                right: 100,
                child: MapPoint(Colors.orange),
              ),
              Positioned(
                top: 350,
                right: 350,
                child: MapPoint(Colors.purple),
              ),
              Positioned(
                bottom: 350,
                right: 30,
                child: MapPoint(Colors.green),
              ),
              //events nearby end
              Positioned(
                  bottom: 100,
                  left: 30,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MapBottomCard(Colors.blue, "Fall Festival", "10km"),
                        SizedBox(
                          width: 10,
                        ),
                        MapBottomCard(Colors.orange, "Sonoma County", "8km"),
                        SizedBox(
                          width: 10,
                        ),
                        MapBottomCard(Colors.green, "Hall Festival", "10km"),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        elevation: 50,
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Icon(Icons.home),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapScreen(),
                  ),
                );
              },
              child: Icon(Icons.map),
            ),
            SizedBox(
              width: 50,
            ),
            MaterialButton(
              onPressed: () {},
              child: Icon(Icons.bookmark),
            ),
            MaterialButton(
              onPressed: () {},
              child: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
