class Movie {
  String? name;
  String? image;
  int id;
  String? language;
  String? overview;

  Movie({
    required this.id,
    required this.name,
    required this.language,
    required this.image,
    required this.overview,
  });
  static Movie fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        name: json["original_title"],
        overview: json["overview"],
        image: json["poster_path"],
        language: json["original_language"]);
  }
}
