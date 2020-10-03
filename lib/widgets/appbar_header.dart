import 'package:flutter/material.dart';
import 'package:msdevelopers/config/colors.dart';

class AppbarHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(top: 48.0, left: 30),
        child: Text(
          "Jobs",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
    );
  }
}
