import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:netflix/function/main_api_functions.dart';
import 'package:netflix/screen/main_home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    datafetching(context);
    super.initState();
  }

  Timer checker = Timer(const Duration(milliseconds: 500), () {});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 400,
          ),
          Center(child: Image.asset("asset/Netflix_logo.png")),
          const SizedBox(
            height: 20,
          ),
          checker.isActive
              ? AnimatedTextKit(
                  onFinished: () {
                    setState(() {});
                  },
                  totalRepeatCount: 2,
                  animatedTexts: [
                      TyperAnimatedText("Please wait...",
                          speed: const Duration(milliseconds: 100),
                          textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 28,
                              fontWeight: FontWeight.w400)),
                      FadeAnimatedText("Fetching data",
                          textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 28,
                              fontWeight: FontWeight.w400))
                    ])
              : Text(
                  "Plaese check your internet",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 26,
                      fontWeight: FontWeight.w400),
                ),
          const SizedBox(
            height: 20,
          ),
          checker.isActive
              ? const CircularProgressIndicator()
              : TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (BuildContext ctx, Animation animator1,
                              Animation animator2) {
                            return const SplashScreen();
                          },
                          transitionDuration: Duration.zero,
                        ));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.white.withOpacity(0.5))),
                  child: const Text("Retry"))
        ],
      ),
    );
  }
}

void datafetching(BuildContext context) async {
  Future.delayed(const Duration(seconds: 2), () async {
    await fetchall();
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) {
        return const MainHomeScreen();
      },
    ));
  });
}
