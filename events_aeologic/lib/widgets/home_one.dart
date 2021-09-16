import 'package:flutter/material.dart';

class IconCard extends StatefulWidget {
  const IconCard({Key? key}) : super(key: key);

  @override
  _IconCardState createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.pink[100]),
              child: Icon(
                Icons.movie_creation_outlined,
                color: Colors.pink,
              ),
            ),
            shadowColor: Colors.pink,
          ),
          Column(
            children: [
              Text(
                "Movies",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Text(
                "22 items",
                style: TextStyle(color: Colors.pink, fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }
}
