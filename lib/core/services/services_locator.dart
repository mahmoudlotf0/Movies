import 'package:get_it/get_it.dart';
import 'package:moveapp/features/movie/domain/usecases/get_movie_details_use_case.dart';
import 'package:moveapp/features/movie/domain/usecases/get_popular_movies_usecase.dart';
import 'package:moveapp/features/movie/domain/usecases/get_top_rated_usecase.dart';

import '../../features/movie/data/datasources/movie_remote_data_source.dart';
import '../../features/movie/data/repositories/movies_repository.dart';
import '../../features/movie/domain/repositories/base_movies_repository.dart';
import '../../features/movie/domain/usecases/get_now_playing_movies_usecase.dart';
import '../../features/movie/presentation/bloc/movie_bloc.dart';

final GetIt sl = GetIt.instance;

class ServicesLocator {
  void init() {
    //* bloc
    sl.registerFactory<MoviesBloc>(() => MoviesBloc(
          getNowPlayingMoviesUseCase: sl(),
          getPopularMoviesUseCase: sl(),
          getTopRatedMoviesUseCase: sl(),
          getMovieDetailsUseCase: sl(),
        ));
    //* data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
    //* Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));
    //* useCases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
  }
}
