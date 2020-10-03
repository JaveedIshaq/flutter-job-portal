import 'package:flutter/material.dart';
import 'package:msdevelopers/config/colors.dart';

class HomeNavIcon extends StatelessWidget {
  const HomeNavIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [starBgColor, Color(0xFFf76c6c)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5)),
      child: Icon(Icons.home, color: Colors.white),
    );
  }
}
