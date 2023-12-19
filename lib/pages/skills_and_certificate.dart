import 'package:flutter/material.dart';
import 'package:portfolios/pages/skills.dart';

import 'certificate.dart';

class SkillsAndCertificate extends StatelessWidget {
  const SkillsAndCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        animationDuration: Duration(seconds: 1),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: SizedBox(
              height: 50.0,
              child: TabBar(
                tabs: [
                  Tab(text: "Skills"),
                  Tab(text: "Certificates"),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Skills(),
              CertifcatePage(),
            ],
          ),
        ));
  }
}
