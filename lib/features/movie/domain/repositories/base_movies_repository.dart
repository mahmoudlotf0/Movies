import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/movie.dart';
import '../entities/movie_detail.dart';
import '../entities/recommendation.dart';
import '../usecases/get_movie_details_use_case.dart';
import '../usecases/get_recommendation_use_case.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failurs, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failurs, List<Movie>>> getPopularMovies();
  Future<Either<Failurs, List<Movie>>> getTopRatedMovies();
  Future<Either<Failurs, MovieDetail>> getMovieDetails(
      GetMovieDetailsParameter parameter);
  Future<Either<Failurs, List<Recommendation>>> getMovieRecommendation(
      GetRecommendationParameter parameter);
}
