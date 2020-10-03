import 'package:flutter/material.dart';
import 'package:msdevelopers/widgets/appbar_header.dart';
import 'package:msdevelopers/widgets/home_nav_icon.dart';
import 'package:msdevelopers/widgets/job_card.dart';
import 'package:msdevelopers/widgets/search_box.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: 0,
        type: BottomNavigationBarType
            .shifting, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(icon: HomeNavIcon(), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.badge, color: Colors.grey), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail, color: Colors.grey), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey), label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarHeader(),
            SearchBox(),
            JobCard(
              applied: false,
              logoName: "company1",
              companyName: "JobME.pk",
              jobTitle: "Software Developer",
              jobDescription: "We need a software Engineer",
            ),
            JobCard(
              applied: true,
              logoName: "company2",
              companyName: "JobME.pk",
              jobTitle: "Website Developer",
              jobDescription:
                  "We need a Website Developer with 5 years experience in building websites",
            ),
            JobCard(
              applied: false,
              logoName: "company3",
              companyName: "JobME.pk",
              jobTitle: "Android Developer",
              jobDescription: "We need a Android Mobile Apps Engineer",
            ),
          ],
        ),
      ),
    );
  }
}
