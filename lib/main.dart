import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:portfolios/pages/ithra.dart';
import 'package:portfolios/pages/projects.dart';
import 'package:portfolios/pages/skills_and_certificate.dart';
import 'package:portfolios/themes/theme_cons.dart';
import 'package:portfolios/themes/theme_manger.dart';
import 'pages/about_me.dart';
import 'dart:js' as js;

void main() => runApp(const MyApp());

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  // ignore: library_private_types_in_public_api
  // test
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abdalla Portfoilo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the next screen
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: LoadingIndicator(
            indicatorType: Indicator.ballScaleRippleMultiple,

            /// Required, The loading type of the widget
            colors: [Colors.yellowAccent],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return DefaultTabController(
        length: 3,
        animationDuration: const Duration(seconds: 1),
        child: Scaffold(
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: SizedBox(
                height: 50.0,
                child: TabBar(
                  dividerColor: Color(0xFFD0BCFF),
                  indicatorWeight: 2,
                  tabs: [
                    Tab(
                      child: Text(
                        "About Me",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                        child: Text(
                      "Skills And Certificate",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Tab(
                        child: Text(
                      "Project",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
            ),
            body: const TabBarView(
              children: [
                AboutMe(),
                SkillsAndCertificate(),
                Projects(),
              ],
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    js.context.callMethod(
                        'open', ['linkedin.com/in/abdaallah-mahdi-a12b1222a']);
                  },
                  child: Image.asset(
                    'assets/images/linkedin.png',
                    height: 45,
                    width: 45,
                  ),
                ),
                InkWell(
                  onTap: () {
                    js.context
                        .callMethod('open', ['abdallahmahdi997@gmail.com']);
                  },
                  child: Image.asset(
                    'assets/images/gmail.png',
                    height: 45,
                    width: 45,
                  ),
                ),
                Switch(
                    value: _themeManager.themeMode == ThemeMode.dark,
                    onChanged: (newValue) {
                      _themeManager.toggleTheme(newValue);
                    }),
              ],
            )));
  }
}
