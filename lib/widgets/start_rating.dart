import 'package:flutter/material.dart';
import 'package:msdevelopers/config/colors.dart';

class StartRating extends StatelessWidget {
  const StartRating({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: starBgColor, size: 18),
        Icon(Icons.star, color: starBgColor, size: 18),
        Icon(Icons.star_border, color: starBgColor, size: 18),
        Icon(Icons.star_border, color: starBgColor, size: 18),
        Icon(Icons.star_border, color: starBgColor, size: 18),
        Icon(Icons.star_border, color: starBgColor, size: 18),
        SizedBox(width: 10),
        Text(
          "2",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 18),
        )
      ],
    );
  }
}
