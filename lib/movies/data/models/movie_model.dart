import 'package:movies/movies/domain/entities/movies.dart';

class MovieModel extends Movie{
  MovieModel({required super.title,
    required super.id,
    required super.backdropPath,
    required super.genreIds,
    required super.overview,
    required super.releaseDate,
    required super.voteAverage
  });

  factory MovieModel.fromJson(Map<String,dynamic> json)=> MovieModel(
      title: json["original_title"],
      id: json["id"],
      backdropPath: json["backdrop_path"],
      genreIds: List<int>.from(json["genre_ids"].map((e)=>e)),
      overview: json["overview"],
      releaseDate: json["release_date"],
      voteAverage: json["vote_average"]
  );
}
