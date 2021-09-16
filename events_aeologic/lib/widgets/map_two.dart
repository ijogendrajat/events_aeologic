import 'package:flutter/material.dart';

class MapBottomCard extends StatefulWidget {
  const MapBottomCard({Key? key}) : super(key: key);

  @override
  _MapBottomCardState createState() => _MapBottomCardState();
}

class _MapBottomCardState extends State<MapBottomCard> {
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
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 15,
            top: 15,
            child: Text(
              "10km",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 40,
            child: Text(
              "Fall Festival",
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
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1520466809213-7b9a56adcd45?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdpcmwlMjB0cmF2ZWx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
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
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1616776005756-4dca36124bf9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
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
