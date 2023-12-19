import 'package:flutter/material.dart';
import 'package:portfolios/pages/sales_analysis.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Wrap(
        children: [
          Project(
            image: 'assets/images/sales.jpg',
            tital: "Electroincs Store Sales Analysis",
            page: SalesAnalysis(),
          ),
        ],
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
