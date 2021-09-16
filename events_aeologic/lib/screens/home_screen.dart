import 'package:events_aeologic/screens/map_screen.dart';
import 'package:events_aeologic/screens/profile_screen.dart';
import 'package:events_aeologic/screens/saved_screen.dart';
import 'package:events_aeologic/widgets/home_one.dart';
import 'package:events_aeologic/widgets/home_three.dart';
import 'package:events_aeologic/widgets/home_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List screens = [
    HomeScreen(),
    MapScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue[050],
        title: Text(
          "Events",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue[050],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconCard(Icons.ac_unit, "Something", Colors.black),
                ],
              ),
              Text(
                "Upcoming events",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              UpcomingEventsCard(),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  //event card come here
                ],
              ),
              Text(
                "Recommended for you",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              RecommendedCard(),
              Row(),
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
              onPressed: () {},
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
