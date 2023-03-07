import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/base_use_case.dart';
import '../entities/recommendation.dart';
import '../repositories/base_movies_repository.dart';

class GetRecommendationUseCase
    extends BaseUseCase<List<Recommendation>, GetRecommendationParameter> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failurs, List<Recommendation>>> call(
      GetRecommendationParameter parameters) async {
    return await baseMoviesRepository.getMovieRecommendation(parameters);
  }
}

class GetRecommendationParameter extends Equatable {
  final int id;
  const GetRecommendationParameter({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}
