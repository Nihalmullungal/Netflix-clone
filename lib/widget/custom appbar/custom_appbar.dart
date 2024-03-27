import 'package:flutter/material.dart';
import 'package:netflix/screen/searchscreen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.colorapp});
  final Color colorapp;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorapp,
      child: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "asset/Netflix_logo.png",
                  width: 30,
                  height: 30,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const SearchScreen();
                        },
                      ));
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
