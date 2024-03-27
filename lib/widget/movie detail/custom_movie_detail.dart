import 'package:flutter/material.dart';

class CustomMovieDetail extends StatelessWidget {
  const CustomMovieDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "2023",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          color: Colors.white.withOpacity(0.5),
          child: const Text(
            " A ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          "1h 55m",
          style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 20),
        ),
        const SizedBox(
          width: 15,
        ),
        Icon(
          Icons.message,
          color: Colors.white.withOpacity(0.5),
          size: 20,
        ),
      ],
    );
  }
}
