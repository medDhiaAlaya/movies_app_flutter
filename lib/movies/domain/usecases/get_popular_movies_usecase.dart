import 'package:movies/movies/domain/entities/movies.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movie>>execute()async {

    return await baseMoviesRepository.getPopularMovies();

  }
}