import 'package:movies/movies/domain/entities/movies.dart';

abstract class BaseMoviesRepository{
  Future<List<Movie>> getPlayingNow();
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> getTopRatedMovies();


}