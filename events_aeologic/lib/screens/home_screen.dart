import 'package:events_aeologic/screens/map_screen.dart';
import 'package:events_aeologic/widgets/hero.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconCard(Icons.movie, "Movies", Colors.purple),
                    SizedBox(
                      width: 15,
                    ),
                    IconCard(Icons.cloud_upload, "Party", Colors.blue),
                    SizedBox(
                      width: 15,
                    ),
                    IconCard(Icons.food_bank, "Sports", Colors.orange),
                    SizedBox(
                      width: 15,
                    ),
                    IconCard(Icons.coffee, "Food", Colors.green),
                  ],
                ),
              ),
              Text(
                "Upcoming events",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    UpcomingEventsCard("Fall Festival",
                        "New York : 12 Nov 2018", 'https://bit.ly/3zh32Vh'),
                    SizedBox(
                      width: 15,
                    ),
                    UpcomingEventsCard("Summer Festival",
                        "Ellicottville: 12 Nov 2018", 'https://bit.ly/39c8VZ4'),
                    //event card come here
                  ],
                ),
              ),
              Text(
                "Recommended for you",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecommendedCard("Harvest Fest", "Hood River", "Food",
                        Colors.green, "2km", "https://bit.ly/2Xk7iWK"),
                    SizedBox(
                      width: 20,
                    ),
                    RecommendedCard("Oktober Fest", "Wine Wood", "Party",
                        Colors.blue, "10km", "https://bit.ly/3zgvkPQ"),
                    SizedBox(
                      width: 20,
                    ),
                    RecommendedCard("Ice Sky Fest", "GT Road", "Sports",
                        Colors.orange, "8km", "https://bit.ly/3zi2G0L"),
                    SizedBox(
                      width: 20,
                    ),
                    RecommendedCard("Cinema Fest", "VineWood", "Movies",
                        Colors.purple, "32km", "https://bit.ly/3lya0jW"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsHero(),
            ),
          );
        },
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
