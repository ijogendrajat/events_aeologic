import 'package:flutter/material.dart';

class UpcomingEventsCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String eventUrl;
  final String eventName;
  final String eventDate;

  UpcomingEventsCard(this.eventName, this.eventDate, this.eventUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 180,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 250,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(eventUrl),
                fit: BoxFit.fitHeight,
              ),
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          //card widget here
          Positioned(
            // left: 150,
            left: 160,
            bottom: 20,
            child: Container(
              width: 180,
              height: 140,
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
                      eventName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                      eventDate,
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
      ),
    );
  }
}
