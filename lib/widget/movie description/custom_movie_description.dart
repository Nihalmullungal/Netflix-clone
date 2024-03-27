import 'package:flutter/material.dart';
import 'package:netflix/model/movie.dart';

class CustomMovieDescription extends StatelessWidget {
  const CustomMovieDescription({super.key, required this.desc});
  final Movie desc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              desc.overview!,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
