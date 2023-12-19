import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      primary: true,
      scrollDirection: Axis.vertical,
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                Text('Data technical skills'),
                Skill(
                  name: " python",
                  percent: 0.9,
                  perText: "90%",
                  image: 'assets/images/python.svg',
                ),
                Skill(
                  name: " SQL",
                  percent: 0.8,
                  perText: "80%",
                  image: 'assets/images/sql.svg',
                ),
                Skill(
                  name: "Microsoft Power BI",
                  percent: 0.7,
                  perText: "70%",
                  image: 'assets/images/powerbi.svg',
                ),
                Skill(
                  name: "Excel",
                  percent: 0.9,
                  perText: "90%",
                  image: 'assets/images/excel.svg',
                ),
                Skill(
                  name: "Machine Learning",
                  percent: 0.9,
                  perText: "90%",
                  image: 'assets/images/python.svg',
                )
              ],
            ),
            Column(
              children: [
                Text("Other technical skills"),
                Skill(
                  name: " Flutter",
                  percent: 0.9,
                  perText: "90%",
                  image: 'assets/images/flutter.svg',
                ),
                Skill(
                  name: " Firebase & Firestore",
                  percent: 0.8,
                  perText: "80%",
                  image: 'assets/images/firebase.svg',
                ),
                Skill(
                  name: "postman & API's test",
                  percent: 0.7,
                  perText: "70%",
                  image: 'assets/images/postman.svg',
                ),
                Skill(
                  name: "Git and Github",
                  percent: 0.9,
                  perText: "90%",
                  image: 'assets/images/github.svg',
                ),
                Skill(
                  name: "Machine Learning",
                  percent: 0.9,
                  perText: "90%",
                  image: 'assets/images/python.svg',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Skill extends StatelessWidget {
  final String image;
  final double percent;
  final String name;
  final String perText;

  const Skill(
      {super.key,
      required this.percent,
      required this.name,
      required this.perText,
      required this.image});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xff6750A4),
            ),
          ),
          child: ListTile(
            leading: SvgPicture.asset(
              image,
              height: 48,
              width: 48,
            ),
            title: Text(
              name,
              style: textTheme.bodySmall,
            ),
            trailing: Text(
              perText,
              style: textTheme.bodySmall,
            ),
            subtitle: LinearPercentIndicator(
              animation: true,
              lineHeight: 10,
              animationDuration: 2000,
              percent: percent,
              barRadius: const Radius.circular(10),
              progressColor: isDark ? Colors.green : Colors.amber,
            ),
          ),
        ));
  }
}
