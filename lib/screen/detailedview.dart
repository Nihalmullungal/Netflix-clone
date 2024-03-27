import 'package:flutter/material.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/widget/custom%20description/custom_description.dart';
import 'package:netflix/widget/customcover/custom_cover_detail.dart';

class DetailedView extends StatelessWidget {
  const DetailedView({super.key, required this.details});
  final Movie details;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(height: 20),
          CustomCoverDetail(image: details.image),
          const SizedBox(height: 20),
          CustomDescription(detail: details),
          const SizedBox(
            height: 5,
          ),
        ],
      )),
    );
  }
}
