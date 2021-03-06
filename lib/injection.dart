import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:core/core.dart';
import 'package:search/search.dart';
import 'package:get_it/get_it.dart';
import 'package:watchlist/watchlist.dart';

final locator = GetIt.instance;

void init() {
  ///? START CUBIT

  //! START [MOVIE_CUBIT]
  locator.registerFactory(
    () => MovieSearchCubit(
      searchMovies: locator(),
    ),
  );

  locator.registerFactory(
    () => MovieWatchlistCubit(
      getWatchlistMovies: locator(),
    ),
  );

  locator.registerFactory(
    () => MovieNowPlayingCubit(
      getNowPlayingMovies: locator(),
    ),
  );

  locator.registerFactory(
    () => MoviePopularCubit(
      getPopularMovies: locator(),
    ),
  );

  locator.registerFactory(
    () => MovieTopRatedCubit(
      getTopRatedMovies: locator(),
    ),
  );

  locator.registerFactory(
    () => MovieRecommendationsCubit(
      getMovieRecommendations: locator(),
    ),
  );

  locator.registerFactory(
    () => MovieDetailCubit(
      getMovieDetail: locator(),
      saveWatchlist: locator(),
      removeWatchlist: locator(),
      getWatchListStatus: locator(),
    ),
  );
  //! END [MOVIE_CUBIT]

  //! START [TV_CUBIT]
  locator.registerFactory(
    () => TVSeriesAiringTodayCubit(
      getAiringTodayTVSeries: locator(),
    ),
  );

  locator.registerFactory(
    () => TVSeriesDetailCubit(
      getDetailTVSeries: locator(),
      getWatchListStatusTVSeries: locator(),
      saveWatchlistTVSeries: locator(),
      removeWatchlistTVSeries: locator(),
    ),
  );

  locator.registerFactory(
    () => TVSeriesRecommendationsCubit(
      getRecommendationTVSeries: locator(),
    ),
  );

  locator.registerFactory(
    () => TVSeriesSearchCubit(
      searchTVSeries: locator(),
    ),
  );

  locator.registerFactory(
    () => TVSeriesTopRatedCubit(
      getTopRatedTVSeries: locator(),
    ),
  );

  locator.registerFactory(
    () => TVSeriesPopularCubit(
      getPopularTVSeries: locator(),
    ),
  );

  locator.registerFactory(
    () => TVSeriesWatchlistCubit(
      getWatchlistTVSeries: locator(),
    ),
  );

  locator.registerFactory(
    () => TVSeriesEpisodeSeasonCubit(
      getEpisodeSeasonTVSeries: locator(),
    ),
  );
  //! END [TV_CUBIT]

  ///? END [CUBIT]

  ///? START [USECASE]

  //! START[USECASE_MOVIE]
  locator.registerLazySingleton(() => GetNowPlayingMovies(locator()));
  locator.registerLazySingleton(() => GetPopularMovies(locator()));
  locator.registerLazySingleton(() => GetTopRatedMovies(locator()));
  locator.registerLazySingleton(() => GetMovieDetail(locator()));
  locator.registerLazySingleton(() => GetMovieRecommendations(locator()));
  locator.registerLazySingleton(() => SearchMovies(locator()));
  locator.registerLazySingleton(() => GetWatchListStatus(locator()));
  locator.registerLazySingleton(() => SaveWatchlist(locator()));
  locator.registerLazySingleton(() => RemoveWatchlist(locator()));
  locator.registerLazySingleton(() => GetWatchlistMovies(locator()));
  //! END[USECASE_MOVIE]

  //! START[USECASE_TV]
  locator.registerLazySingleton(
      () => GetAiringTodayTVSeries(repository: locator()));
  locator.registerLazySingleton(() => GetDetailTVSeries(repository: locator()));
  locator
      .registerLazySingleton(() => GetPopularTVSeries(repository: locator()));
  locator
      .registerLazySingleton(() => GetTopRatedTVSeries(repository: locator()));
  locator.registerLazySingleton(() => SearchTVSeries(repository: locator()));
  locator.registerLazySingleton(
      () => GetRecommendationTVSeries(repository: locator()));
  locator.registerLazySingleton(
      () => GetEpisodeSeasonTVSeries(repository: locator()));
  locator.registerLazySingleton(
      () => GetWatchListStatusTVSeries(repository: locator()));
  locator
      .registerLazySingleton(() => GetWatchlistTVSeries(repository: locator()));
  locator.registerLazySingleton(
      () => SaveWatchlistTVSeries(repository: locator()));
  locator.registerLazySingleton(
      () => RemoveWatchlistTVSeries(repository: locator()));

  //! END[USECASE_TV]

  ///? END [USECASE]

  ///? START [DOMAIN/REPOSITORY]

  //! START [DOMAIN/REPOSITORY/MOVIE]
  locator.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
      networkInfo: locator(),
    ),
  );
  //! END [DOMAIN/REPOSITORY/MOVIE]

  //! START [DOMAIN/REPOSITORY/TV]
  locator.registerLazySingleton<TVRepository>(
    () => TVRepositoryImpl(
      tvRemoteDataSource: locator(),
      tvLocalDataSource: locator(),
    ),
  );
  //! END [DOMAIN/REPOSITORY/TV]

  ///? END [DOMAIN/REPOSITORY]

  ///? START [DATA SOURCE]

  //! START [DATASOURCE/MOVIE]
  locator.registerLazySingleton<MovieRemoteDataSource>(
    () => MovieRemoteDataSourceImpl(
      client: locator(),
    ),
  );

  locator.registerLazySingleton<MovieLocalDataSource>(
    () => MovieLocalDataSourceImpl(
      databaseHelper: locator(),
    ),
  );
  //! END [DATASOURCE/MOVIE]

  //! START [DATASOURCE/TV]
  locator.registerLazySingleton<TVRemoteDataSource>(
    () => TVRemoteDataSourceImp(
      client: locator(),
    ),
  );

  locator.registerLazySingleton<TVLocalDataSource>(
    () => TVLocalDataSourceImpl(
      databaseHelper: locator(),
    ),
  );
  //! END [DATASOURCE/TV]

  ///? END [DATA SOURCE]

  ///! START [HELPER]
  locator.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());

  ///! END [HELPER]

  locator.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(locator()));

  // external
  locator.registerLazySingleton(() => HttpSSLPinning.client);
  locator.registerLazySingleton(() => DataConnectionChecker());
}
