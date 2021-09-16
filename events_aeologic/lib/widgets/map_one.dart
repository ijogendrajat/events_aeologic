import 'package:flutter/material.dart';

class DistanceTopBar extends StatefulWidget {
  const DistanceTopBar({Key? key}) : super(key: key);

  @override
  _DistanceTopBarState createState() => _DistanceTopBarState();
}

class _DistanceTopBarState extends State<DistanceTopBar> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Container(
      height: 55,
      width: _width / 1.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "4km",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            "20km",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Container(
            height: 20,
            width: 40,
            child: Center(
              child: Text(
                "All",
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red[100],
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
          )
        ],
      ),
    );
  }
}
