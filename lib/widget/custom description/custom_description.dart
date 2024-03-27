import 'package:flutter/material.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/widget/detail%20button/custom_detail_button.dart';
import 'package:netflix/widget/movie%20description/custom_movie_description.dart';
import 'package:netflix/widget/movie%20detail/custom_movie_detail.dart';

class CustomDescription extends StatelessWidget {
  const CustomDescription({super.key, required this.detail});
  final Movie detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            detail.name!,
            style: const TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 3,
          ),
          const CustomMovieDetail(),
          const SizedBox(
            height: 10,
          ),
          const CustomDetailButton(),
          const SizedBox(
            height: 10,
          ),
          CustomMovieDescription(desc: detail)
        ],
      ),
    );
  }
}
