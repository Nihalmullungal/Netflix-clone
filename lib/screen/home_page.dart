import 'package:flutter/material.dart';
import 'package:netflix/function/main_api_functions.dart';
import 'package:netflix/widget/banner/custom_banner.dart';
import 'package:netflix/widget/choice%20chip/custom_choice_chips.dart';
import 'package:netflix/widget/custom%20appbar/custom_appbar.dart';
import 'package:netflix/widget/custom%20scroll%20view/custom_scroll_view2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color appBarColor = Colors.black.withOpacity(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(colorapp: appBarColor),
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            setState(() {
              appBarColor = notification.metrics.pixels > 0
                  ? Colors.black.withOpacity(0.5)
                  : Colors.black.withOpacity(0);
            });
          }
          return false;
        },
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: const Alignment(0.8, 0),
                  colors: [
                const Color.fromARGB(255, 218, 128, 38).withOpacity(0.57),
                const Color.fromARGB(255, 0, 0, 0),
              ])),
          child: ListView(children: [
            const CustomChoiceChip(),
            const CustomBanner(),
            const SizedBox(
              height: 10,
            ),
            CustomScrollView2(titleofsection: "popular", movieview: listmovies),
            const SizedBox(
              height: 10,
            ),
            CustomScrollView2(
                titleofsection: "Continue Playing", movieview: nowplaying),
            const SizedBox(
              height: 10,
            ),
            CustomScrollView2(
                titleofsection: "Trending Now", movieview: trendingnow),
            const SizedBox(
              height: 10,
            ),
            CustomScrollView2(titleofsection: "Top Rated", movieview: toprated),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
