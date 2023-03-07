import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();
  @override
  List<Object> get props => [];
}

class GetNowPlayingMoviesEvent extends MoviesEvent {}

class GetPopularMoviesEvent extends MoviesEvent {}

class GetTopRatedMoviesEvent extends MoviesEvent {}

class GetMovieDetailsEvent extends MoviesEvent {
  final int id;
  const GetMovieDetailsEvent({
    required this.id,
  });
  @override
  List<Object> get props => [id];
}

class GetMovieRecommendationEvent extends MoviesEvent {
  final int id;
  const GetMovieRecommendationEvent({
    required this.id,
  });
  @override
  List<Object> get props => [id];
}
