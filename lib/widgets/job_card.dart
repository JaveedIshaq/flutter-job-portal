import 'package:flutter/material.dart';
import 'package:msdevelopers/widgets/apply_Job_button.dart';
import 'package:msdevelopers/widgets/job_company_detail.dart';
import 'package:msdevelopers/widgets/start_rating.dart';

class JobCard extends StatelessWidget {
  final bool applied;
  final String logoName;
  final String companyName;
  final String jobTitle;
  final String jobDescription;

  const JobCard(
      {Key key,
      this.applied,
      this.logoName,
      this.jobTitle,
      this.companyName,
      this.jobDescription})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 10,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StartRating(),
                  ApplyJobButton(applied: applied),
                ],
              ),
              SizedBox(height: 15),
              JobCompanyDetail(
                logoName: logoName,
                companyName: companyName,
                jobTitle: jobTitle,
                jobDescription: jobDescription,
              ),
              SizedBox(height: 15),
              ListTile(
                dense: true,
                leading: Image.asset("assets/icons/detail.png", width: 30),
                title: Text("4 Years", style: TextStyle(fontSize: 15)),
                subtitle: Text("Experience"),
                trailing: Text("24/10/2019"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
