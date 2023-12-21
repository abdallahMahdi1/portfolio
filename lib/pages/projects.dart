import 'package:flutter/material.dart';
import 'package:portfolios/pages/ithra.dart';
import 'package:portfolios/pages/road_accident.dart';
import 'package:portfolios/pages/sales_analysis.dart';
import 'package:portfolios/pages/call_center.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        primary: true,
        scrollDirection: Axis.vertical,
        child: Wrap(
          children: [
            Column(
              children: [
                Text(
                  "Data Analtyics Projects",
                  style: textTheme.bodyMedium,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Project(
                      image: 'assets/images/sales.jpg',
                      tital: "Electroincs Store Sales Analysis",
                      page: SalesAnalysis(),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Project(
                      image: 'assets/images/call_center.png',
                      tital: "Call center Dashboard",
                      page: CallCenter(),
                    ),
                    Project(
                      image: 'assets/images/road accident.png',
                      tital: "Road Accident analysis Dashboard",
                      page: RoadAccident(),
                    ),
                  ],
                ),
                Text(
                  "Mobile Application Projects",
                  style: textTheme.bodyMedium,
                ),
                const Project(
                  image: 'assets/images/ithra/ithracover.png',
                  tital: "Ithra Mobile Application",
                  page: Ithra(),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class Project extends StatelessWidget {
  final String image;
  final String tital;
  final Widget page;
  const Project(
      {super.key,
      required this.image,
      required this.tital,
      required this.page});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        height: 250,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xff6750A4),
          ),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image,
              height: 150,
              width: 250,
            ),
          ),
          Text(
            tital,
            style: textTheme.bodySmall,
          )
        ]),
      ),
    );
  }
}
