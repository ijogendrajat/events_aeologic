import 'package:flutter/material.dart';

class RecommendedCard extends StatefulWidget {
  const RecommendedCard({Key? key}) : super(key: key);

  @override
  _RecommendedCardState createState() => _RecommendedCardState();
}

class _RecommendedCardState extends State<RecommendedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/fall_Image.jpg")),
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 160,
            child: Text(
              "Harvest Fest",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: 2,
            top: 145,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ),
          Positioned(
            top: 190,
            left: 10,
            child: Text(
              "Hood River",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                height: 20,
                width: 80,
                child: Center(
                  child: Text(
                    "Food",
                    style: TextStyle(fontSize: 15, color: Colors.green),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              )),
          Positioned(
            right: 10,
            bottom: 12,
            child: Text(
              "2km",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
