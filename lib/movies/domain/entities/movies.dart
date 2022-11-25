import 'package:equatable/equatable.dart';

class Movie extends Equatable{
  final String title;
  final int id;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final String releaseDate;
  final double voteAverage;

  const Movie({
    required this.title,
    required this.id,
    required this.backdropPath,
    required this.genreIds,
    required this.overview,
    required this.releaseDate,
    required this.voteAverage
  } );

  @override
  List<Object> get props =>[
    title,
    id,
    backdropPath,
    genreIds,
    overview,
    releaseDate,
    voteAverage
  ];
}
