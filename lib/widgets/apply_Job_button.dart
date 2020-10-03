import 'package:flutter/material.dart';
import 'package:msdevelopers/config/colors.dart';

class ApplyJobButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final bool applied;

  const ApplyJobButton(
      {Key key,
      this.text,
      this.press,
      this.color,
      this.textColor = Colors.white,
      this.applied})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 100,
        padding: EdgeInsets.symmetric(vertical: 3),
        height: 35,
        decoration: BoxDecoration(
            //boxShadow: AppColors.neumorpShadow,
            gradient: LinearGradient(
              //colors: [Color(0xFFB7BBF5), Color(0xFF535AB8)],
              colors: applied
                  ? [kPrimaryColor, kPrimaryColor]
                  : [Color(0xFFf76c6c), starBgColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            applied ? "Applied" : "Apply Now",
            style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );

    // return Container(
    //   padding: EdgeInsets.symmetric(vertical: 10),
    //   width: size.width * 0.8,
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(10),
    //     child: FlatButton(
    //       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
    //       color: color,
    //       onPressed: press,
    //       child: Text(
    //         text,
    //         style: TextStyle(color: textColor),
    //       ),
    //     ),
    //   ),
    // );
  }
}
