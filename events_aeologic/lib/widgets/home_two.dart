import 'package:flutter/material.dart';

class UpcomingEventsCard extends StatefulWidget {
  const UpcomingEventsCard({Key? key}) : super(key: key);

  @override
  _UpcomingEventsCardState createState() => _UpcomingEventsCardState();
}

class _UpcomingEventsCardState extends State<UpcomingEventsCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //beground
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          // child: Text("Hii"),
        ),
        //image here
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fall_Image.jpg"),
                fit: BoxFit.fill),
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        //card widget here
        Positioned(
          left: 150,
          bottom: 35,
          child: Container(
            width: 200,
            height: 125,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 10,
                  top: 16,
                  child: Text(
                    "Fall Festival",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  right: 1,
                  top: 1,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined)),
                ),
                Positioned(
                  left: 10,
                  top: 50,
                  child: Text(
                    "New York : 12 Nov 2018",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        "See Details",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.arrow_forward_outlined)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
