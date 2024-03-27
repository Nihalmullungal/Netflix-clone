import 'package:flutter/material.dart';
import 'package:netflix/function/apiconfig.dart';
import 'package:netflix/function/main_api_functions.dart';
import 'package:netflix/screen/detailedview.dart';

class CustomSearchResults extends StatelessWidget {
  const CustomSearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
          child: ValueListenableBuilder(
              valueListenable: searchresults,
              builder: (context, value, child) {
                return value.isEmpty
                    ? const Center(
                        child: Text(
                          "No Results",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (ctx) {
                                  return DetailedView(details: value[index]);
                                }));
                              },
                              child: SizedBox(
                                height: 100,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width: 100,
                                        height: 100,
                                        child: Image.network(
                                          ApiConfig.imageBaseUrl +
                                              value[index].image!,
                                          fit: BoxFit.fill,
                                        )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 35,
                                        ),
                                        SizedBox(
                                            width: 350,
                                            child: Text(
                                              value[index].name!,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(
                            color: Colors.black,
                          ),
                          itemCount: value.length,
                        ),
                      );
              })),
    );
  }
}
