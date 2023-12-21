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
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Data Analysis And Mobile Application Develpor",
                      style: textTheme.displayMedium),
                  Text(
                      "In the vibrant world of data, I'm an avid enthusiast, merging creativity with analytics. Delving into the intricate dance of information, I unravel compelling stories that bring hidden narratives to light.",
                      style: textTheme.bodySmall)
                ]),
          ),
        ),
      ),
    );
  }
}
