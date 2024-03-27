// ignore_for_file: must_be_immutable
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:netflix/function/main_api_functions.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({super.key, required this.searching});
  final SearchController searching;
  Timer? _debounce;
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: searching,
      hintText: "Search movies",
      onChanged: (value) async {
        if (_debounce?.isActive ?? false) _debounce?.cancel();
        _debounce = Timer(const Duration(milliseconds: 500), () async {
          await searchmovies(value);
        });
      },
      leading: Icon(
        Icons.search,
        size: 30,
        color: Colors.black.withOpacity(0.7),
      ),
      trailing: [
        IconButton(
            onPressed: () {
              searching.clear();
              searchmovies("");
            },
            icon: const Icon(Icons.clear))
      ],
    );
  }
}
