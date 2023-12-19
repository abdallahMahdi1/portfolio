import 'dart:js' as js;
import 'package:flutter/material.dart';

class CertifcatePage extends StatelessWidget {
  const CertifcatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Wrap(children: [
          CertificateWidget(
            link: 'https://coursera.org/share/8f5ba61dc2485b7cd845b878a6b69ba1',
            name: "google data analytics certification",
            image: "assets/images/google.png",
          ),
          SizedBox(
            width: 15,
            height: 5,
          ),
          CertificateWidget(
            link:
                'https://s3-us-west-2.amazonaws.com/udacity-printer/production/certificates/4f50bd06-0f48-4d29-a8b9-eb52d41232db.pdf',
            name: "Data Analysis Nanodegree using power bi ",
            image: "assets/images/udacity.png",
          ),
          SizedBox(width: 15, height: 5),
          CertificateWidget(
              link:
                  "https://sql-island.informatik.uni-kl.de/cert.php?id=0fe105c668",
              name: "sql island Game",
              image: "assets/images/sql.jpg"),
          SizedBox(width: 15, height: 5),
        ]),
      ),
    );
  }
}

class CertificateWidget extends StatelessWidget {
  final String link;
  final String name;
  final String image;
  const CertificateWidget(
      {super.key, required this.link, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {},
      child: GestureDetector(
        onTap: () {
          js.context.callMethod('open', [link]);
        },
        child: Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xff6750A4),
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset(
              image,
              height: 250,
              width: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  name,
                  style: textTheme.bodySmall,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
