import 'package:flutter/material.dart';
import 'package:netflix/function/apiconfig.dart';

class CustomCoverDetail extends StatelessWidget {
  final String? image;

  const CustomCoverDetail({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                ApiConfig.imageBaseUrl + image!,
              ),
              fit: BoxFit.contain),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.black.withOpacity(0.5),
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
