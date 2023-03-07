class ApiConstance {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '9f8bd2a2b2cf9ea0021250d713e4f0d7';
  static const String nowPlayingMoviesPath =
      '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String populrMoviesPath =
      '$baseUrl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesPath =
      '$baseUrl/movie/top_rated?api_key=$apiKey';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path) => '$baseImageUrl$path';
  static String movieDetailsPath(int id) =>
      '$baseUrl/movie/$id?api_key=$apiKey';
  static String movieRecommendationPath(int id) =>
      '$baseUrl/movie/$id/recommendations?api_key=$apiKey';
}
