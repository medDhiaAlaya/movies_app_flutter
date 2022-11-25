import 'package:movies/core/error/exceptions.dart';
import 'package:movies/core/network/api_constance.dart';
import 'package:movies/core/network/error_msg_model.dart';
import 'package:movies/movies/data/models/movie_model.dart';
import 'package:dio/dio.dart';
abstract class BaseMovieRemoteDataSource{
  Future<List<MovieModel>?> getNowPlayingMovies();
  Future<List<MovieModel>?> getPopularMovies();
  Future<List<MovieModel>?> topRatedMovies();
}
class MovieRemoteDataSource extends BaseMovieRemoteDataSource{


  @override
  Future<List<MovieModel>?>getNowPlayingMovies()async{
    final response= await Dio().get( ApiConstance.nowPlayingMoviesPath
    );

    if(response.statusCode==200){
      return List<MovieModel>.from((response.data["results"]as List).map((e) => MovieModel.fromJson(e)));
    }
    else {
      throw ServerException(
          errorMessageModel:ErrorMessageModel.fromJson(response.data),
      );


    }
  }

  @override
  Future<List<MovieModel>?>getPopularMovies()async{
    final response= await Dio().get( ApiConstance.popularMoviesPath
    );

    if(response.statusCode==200){
      return List<MovieModel>.from((response.data["results"]as List).map((e) => MovieModel.fromJson(e)));
    }
    else {
      throw ServerException(
        errorMessageModel:ErrorMessageModel.fromJson(response.data),
      );


    }
  }

  @override
  Future<List<MovieModel>?>topRatedMovies()async{
    final response= await Dio().get( ApiConstance.topRatedMoviesPath
    );

    if(response.statusCode==200){
      return List<MovieModel>.from((response.data["results"]as List).map((e) => MovieModel.fromJson(e)));
    }
    else {
      throw ServerException(
        errorMessageModel:ErrorMessageModel.fromJson(response.data),
      );


    }
  }
}