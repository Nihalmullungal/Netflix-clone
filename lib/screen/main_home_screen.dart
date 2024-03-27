import 'package:flutter/material.dart';
import 'package:netflix/screen/home_page.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("asset/netflix_games.png")),
              label: "Games"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library), label: "New & Hot"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "asset/Netflix_myProfile.png",
                ),
                // color: Colors.blue,
              ),
              label: "My Netflix"),
        ],
        currentIndex: 0,
      ),
      body: const MyHomePage(),
    );
  }
}
