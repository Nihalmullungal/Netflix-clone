import 'package:flutter/material.dart';

class CustomDetailButton extends StatelessWidget {
  const CustomDetailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_arrow,
                  size: 30,
                ),
                SizedBox(width: 5),
                Text(
                  "Play",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 102, 99, 99).withOpacity(.7),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.download,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  "Download",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
