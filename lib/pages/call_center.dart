import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class CallCenter extends StatelessWidget {
  const CallCenter({super.key});

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
                    'https://github.com/abdallahMahdi1/projects/blob/main/power%20bi/call%20center%20dashboard.pbix'
                  ]);
                  const Spacer();
                },
                child: Text(
                  "Dashboard Link",
                  style: textTheme.titleSmall,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [
                    'https://github.com/abdallahMahdi1/projects/blob/main/power%20bi/Call%20Center_Call%20Center.csv'
                  ]);
                },
                child: Text(
                  "Dataset",
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
            "The primary goal is to construct a dashboard that presents statistical information addressing the below-mentioned problem statement. \n ﻿KPI'S Requirement :\n 1.Total Number of Calls. 2.Total Call Duration in Hours. 3.Total Call Duration in Minutes.  4.Average Call Duration in Minutes. 5.Response Time Percentage. \n Chart's Requirement: \n 1.Total Call by Day. 2.Total Calls by State. 3.Top Reason for Calls. 4.Total Calls by Channel. 5.Total Calls by Sentiment. 6. Total Calls by Call Centre.",
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
          Image.asset("assets/images/call_center.png"),
          const SizedBox(height: 10),
          Image.asset("assets/images/grid.png")
        ]),
      ),
    ));
  }
}
