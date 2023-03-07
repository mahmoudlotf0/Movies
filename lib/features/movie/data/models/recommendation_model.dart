import 'package:moveapp/features/movie/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
    required super.backdropPath,
    required super.id,
  });
  factory RecommendationModel.toJson(Map<String, dynamic> json) {
    return RecommendationModel(
      backdropPath: json['backdrop_path'],
      id: json['id'],
    );
  }
}
