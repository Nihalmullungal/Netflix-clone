import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          right: 40,
          top: 15,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                image: AssetImage("asset/dark.jpg"), fit: BoxFit.cover),
          ),
          height: 650,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                // color: Colors.black.withOpacity(0.4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient:
                        LinearGradient(end: const Alignment(0.8, 0), colors: [
                      const Color.fromARGB(255, 50, 42, 42).withOpacity(0.35),
                      const Color.fromARGB(255, 50, 42, 42).withOpacity(0.35),
                    ])),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Suspenseful • Time Travel",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Icon(Icons.play_arrow,
                                      size: 25, color: Colors.black),
                                  Text(
                                    "Play",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )
                                ],
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(214, 109, 109, 109),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Icon(Icons.add,
                                      size: 25, color: Colors.white),
                                  Text(
                                    "My List",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
