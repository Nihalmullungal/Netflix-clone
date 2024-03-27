import 'package:flutter/material.dart';
import 'package:netflix/function/main_api_functions.dart';
import 'package:netflix/widget/customsearchbar/custom_search_bar.dart';
import 'package:netflix/widget/customsearchresults/custom_search_results.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    searchresults.value.addAll(listmovies);
    SearchController searching = SearchController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CustomSearchBar(searching: searching),
          const SizedBox(
            height: 10,
          ),
          const CustomSearchResults()
        ],
      )),
    );
  }
}
