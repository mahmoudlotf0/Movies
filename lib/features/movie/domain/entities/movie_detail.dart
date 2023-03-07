import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetail extends Equatable {
  final String backdropPath;
  final int id;
  final String title;
  final String overview;
  final String releaseDate;
  final int runTime;
  final double voteAverage;
  final List<Genres> genres;
  const MovieDetail({
    required this.genres,
    required this.backdropPath,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.runTime,
    required this.title,
    required this.voteAverage,
  });
  @override
  List<Object?> get props => [
        backdropPath,
        id,
        overview,
        releaseDate,
        runTime,
        title,
        voteAverage,
        genres,
      ];
}
