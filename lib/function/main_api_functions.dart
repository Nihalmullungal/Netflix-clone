import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/function/apiconfig.dart';
import 'package:netflix/model/movie.dart';

ValueNotifier<List<Movie>> searchresults = ValueNotifier([]);

List<Movie> listmovies = [];
List<Movie> nowplaying = [];
List<Movie> trendingnow = [];
List<Movie> toprated = [];

Future<List<Movie>> getdata(String genre) async {
  List<Movie> listmovie = [];
  http.Response response =
      await http.get(Uri.parse(ApiConfig.baseUrl + genre + ApiConfig.apiKey));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    List<dynamic> results = data['results'];
    listmovie = results.map((json) => Movie.fromJson(json)).toList();
    print(listmovie);
  } else {
    print(response.statusCode);
  }
  return listmovie;
}

Future<void> searchmovies(String name) async {
  http.Response response = await http.get(Uri.parse(ApiConfig.search + name));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    jsonEncode(data);
    List<dynamic> results = data['results'];
    List<Movie> listmovie =
        results.map((json) => Movie.fromJson(json)).toList();
    searchresults.value.clear();
    Future.forEach(listmovie, (element) {
      if (element.image != null) {
        searchresults.value.add(element);
      }
    });
    searchresults.notifyListeners();
  } else {
    print(response.statusCode);
  }
}

Future<void> fetchall() async {
  listmovies = await getdata(ApiConfig.popular);
  trendingnow = await getdata("/movie/now_playing");
  nowplaying = await getdata("/trending/all/day");
  toprated = await getdata("/movie/top_rated");
}
