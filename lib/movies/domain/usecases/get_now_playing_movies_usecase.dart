import 'package:movies/movies/domain/entities/movies.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movie>>execute()async {

    return await baseMoviesRepository.getPlayingNow();

  }
}