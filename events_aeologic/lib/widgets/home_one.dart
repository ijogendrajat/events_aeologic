import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  IconCard(
    this.icon,
    this.eventType,
    this.color,
  );
  final IconData icon;
  final String eventType;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final lightColor = lighten(color);
    return Container(
      width: 100,
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
            child: Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: lightColor),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            shadowColor: color,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                eventType,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Text(
                "22 items",
                style: TextStyle(color: Colors.blue, fontSize: 11),
              ),
              SizedBox(
                height: 1,
              )
            ],
          )
        ],
      ),
    );
  }
}

//light color

Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

Color lighten(Color color, [double amount = .4]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}
