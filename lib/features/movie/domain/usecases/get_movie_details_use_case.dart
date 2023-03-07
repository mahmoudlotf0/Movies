import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/base_use_case.dart';
import '../entities/movie_detail.dart';
import '../repositories/base_movies_repository.dart';

class GetMovieDetailsUseCase
    extends BaseUseCase<MovieDetail, GetMovieDetailsParameter> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failurs, MovieDetail>> call(
      GetMovieDetailsParameter parameters) async {
    return await baseMoviesRepository.getMovieDetails(parameters);
  }
}

class GetMovieDetailsParameter extends Equatable {
  final int movieId;

  const GetMovieDetailsParameter({required this.movieId});
  @override
  List<Object?> get props => [movieId];
}
