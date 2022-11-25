class ApiConstance {
  static const String baseUrl="https://api.themoviedb.org/3/";
  static const String apikey="b9db59c3791ba2fad0644cb046586af0";


  static const String nowPlayingMoviesPath="$baseUrl/movie/now_playing?api_key=$apikey";

  static const String popularMoviesPath="$baseUrl/movie/top_rated?api_key=$apikey";

  static const String topRatedMoviesPath="$baseUrl/movie/popular?api_key=$apikey";


}