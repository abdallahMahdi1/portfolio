import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class RoadAccident extends StatelessWidget {
  const RoadAccident({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
        body: SingleChildScrollView(
      primary: true,
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Text(
              "Call center Dashboard",
              style: textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [
                    'https://github.com/abdallahMahdi1/projects/blob/main/power%20bi/Road%20Accident.pbix'
                  ]);
                  const Spacer();
                },
                child: Text(
                  "Dashboard Link",
                  style: textTheme.titleSmall,
                ),
              ),
              Text(
                "5 min read",
                style: textTheme.titleSmall,
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: 10),
          Text(
            "Objective :",
            style: textTheme.bodyLarge,
          ),
          const Divider(),
          Text(
            "The primary goal is to construct a dashboard that presents statistical information addressing the below-mentioned problem statement. \n ",
            style: textTheme.bodyMedium,
          ),
          Text(
            "Clients wants to create a Road Accident Dashboard for year 2021 and 2022 so that they can have insight on the below requirements . \n → Primary KPI - Total Casualties and Total Accident values for Current Year and YoY growth \n → Primary KPI's - Total Casualties by Accident Severity for Current Year and YoY growth \n → Secondary KPI's - Total Casualties with respect to vehicle type for Current Year \n → Monthly trend showing comparison of casualties for Current Year and Previous Year \n → Casualties by Road Type for Current year \n → Current Year Casualties by Area/ Location & by Day/Night \n → Total Casualties and Total Accidents by Location ",
            style: textTheme.bodyMedium,
          ),
          Text(
            "Dashboard :",
            style: textTheme.bodyLarge,
          ),
          Text(
            "To address the preceding inquiry, you must incorporate a new column and perform certain measurements. Integrate a data table and employ functions such as COUNT and SUM to gauge the overall number of calls and response times.\n Following this, construct a dashboard.  ",
            style: textTheme.bodyMedium,
          ),
          Center(child: Image.asset("assets/images/Road Dashboard.png"))
        ]),
      ),
    ));
  }
}
