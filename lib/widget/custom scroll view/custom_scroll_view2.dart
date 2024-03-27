import 'package:flutter/material.dart';
import 'package:netflix/function/apiconfig.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/screen/detailedview.dart';

class CustomScrollView2 extends StatelessWidget {
  const CustomScrollView2(
      {super.key, required this.titleofsection, required this.movieview});
  final String titleofsection;
  final List<Movie> movieview;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            titleofsection,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 30),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                movieview.length,
                (index) => Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return DetailedView(details: movieview[index]);
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(ApiConfig.imageBaseUrl +
                                        movieview[index].image!))),
                            height: 200,
                            width: 150,
                          ),
                        ),
                        index == movieview.length - 1
                            ? const SizedBox(
                                width: 20,
                              )
                            : Container()
                      ],
                    )),
          ),
        )
      ],
    ));
  }
}
