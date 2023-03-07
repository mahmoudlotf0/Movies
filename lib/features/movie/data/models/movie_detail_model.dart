import '../../domain/entities/movie_detail.dart';
import 'genres_model.dart';

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel({
    required super.genres,
    required super.backdropPath,
    required super.id,
    required super.overview,
    required super.releaseDate,
    required super.runTime,
    required super.title,
    required super.voteAverage,
  });
  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailModel(
      genres: List.from(
          (json['genres'] as List).map((e) => GenresModel.fromJson(e))),
      backdropPath: json['backdrop_path'],
      id: json['id'],
      title: json['title'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      runTime: json['runtime'],
      voteAverage: json['vote_average'].toDouble(),
    );
  }
}
