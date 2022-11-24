import 'package:movies/movies/domain/entities/movies.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movie>>execute()async {

    return await baseMoviesRepository.getTopRatedMovies();

  }
}