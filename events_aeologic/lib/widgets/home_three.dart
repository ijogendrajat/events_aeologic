import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  final String festName;
  final String festTown;
  final String festCate;
  final String festDistance;
  final Color festColor;
  final String festUrl;

  RecommendedCard(this.festName, this.festTown, this.festCate, this.festColor,
      this.festDistance, this.festUrl);

  @override
  Widget build(BuildContext context) {
    final festliteColor = lighten(festColor);
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
                  image: NetworkImage(festUrl),
                  fit: BoxFit.fitHeight,
                ),
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 160,
            child: Text(
              festName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: 2,
            top: 145,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                color: festColor,
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 10,
            child: Text(
              festTown,
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
                    festCate,
                    style: TextStyle(fontSize: 15, color: festColor),
                  ),
                ),
                decoration: BoxDecoration(
                  color: festliteColor,
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              )),
          Positioned(
            right: 10,
            bottom: 12,
            child: Text(
              festDistance,
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

Color lighten(Color color, [double amount = .4]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}
