import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width * 0.2;
    final hight = MediaQuery.of(context).size.height * 0.15;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width, vertical: hight),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hey, I'm Abdalla.", style: textTheme.displayMedium),
                  Text("Data Analysis And Mobile Application Develpor",
                      style: textTheme.displayMedium),
                  Text(
                      "Ava's ability to transform complex information into actionable insights garnered her a reputation as a highly sought-after data analyst. Now a seasoned professional, Ava is dedicated to helping organizations harness the full potential of their data. ",
                      style: textTheme.bodySmall)
                ]),
          ),
        ),
      ),
    );
  }
}
