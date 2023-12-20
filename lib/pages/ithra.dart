import 'package:flutter/material.dart';
import 'dart:js' as js;

class Ithra extends StatelessWidget {
  const Ithra({super.key});

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
              "Ithra Podcast",
              style: textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [
                    'https://github.com/abdallahMahdi1/ithra/tree/master/lib'
                  ]);
                  Spacer();
                },
                child: Text(
                  "GitHub Code",
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
            "What is Ithra:",
            style: textTheme.bodyLarge,
          ),
          const Divider(),
          Text(
            "Ithra makes it easy for fans to find and enjoy their favorite Sudanese  podcasts by bringing them all together in one simple mobile app. No more searching through different platforms , everything you love is now in one place! ",
            style: textTheme.bodyMedium,
          ),
          Text(
            "Tools :",
            style: textTheme.bodyLarge,
          ),
          const Divider(),
          Text(
            "For the app's frontend, I utilized Flutter for both building and designing. However, due to restrictions in Sudan, I couldn't use Firebase for the backend. Instead, I developed a Python application using Flask libraries, connecting it to a MySQL database, and running it on a VPS server.",
            style: textTheme.bodyMedium,
          ),
          Text(
            "App:",
            style: textTheme.bodyLarge,
          ),
          Wrap(
            children: [
              Image.asset(
                'assets/images/ithra/ithra.jpg',
                width: 600,
                height: 700,
              ),
              Image.asset(
                'assets/images/ithra/ithra1.jpg',
                width: 600,
                height: 700,
              ),
              Image.asset(
                'assets/images/ithra/ithra2.jpg',
                width: 600,
                height: 700,
              ),
              Image.asset(
                'assets/images/ithra/ithra5.jpg',
                width: 600,
                height: 700,
              ),
              Image.asset(
                'assets/images/ithra/ithra4.jpg',
                width: 600,
                height: 700,
              ),
              Image.asset(
                'assets/images/ithra/ithra3.jpg',
                width: 600,
                height: 700,
              ),
              Image.asset(
                'assets/images/ithra/ithra7.jpg',
                width: 600,
                height: 700,
              ),
              Image.asset(
                'assets/images/ithra/ithra8.jpg',
                width: 600,
                height: 700,
              ),
              Image.asset(
                'assets/images/ithra/ithra9.jpg',
                width: 600,
                height: 700,
              ),
            ],
          )
        ]),
      ),
    ));
  }
}
