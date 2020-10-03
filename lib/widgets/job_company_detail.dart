import 'package:flutter/material.dart';

class JobCompanyDetail extends StatelessWidget {
  final String logoName;
  final String companyName;
  final String jobTitle;
  final String jobDescription;

  const JobCompanyDetail(
      {Key key,
      this.logoName,
      this.companyName,
      this.jobTitle,
      this.jobDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/$logoName.png"),
        radius: 30,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jobTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(companyName),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(jobDescription),
      ),
    );
  }
}
