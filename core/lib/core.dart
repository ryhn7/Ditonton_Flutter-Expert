library core;

export './src/styles/colors.dart';
export './src/styles/text_styles.dart';

export './src/utils/constants.dart';
export './src/utils/exception.dart';
export './src/utils/failure.dart';
export './src/utils/state_enum.dart';
export './src/utils/shared.dart';
export './src/utils/ssl_pinning.dart';

//Cubit TV Series & Movie
export './src/presentation/cubit/tv/tv_series_airing_today_cubit.dart';
export './src/presentation/cubit/tv/tv_series_detail_cubit.dart';
export './src/presentation/cubit/tv/tv_series_episode_season_cubit.dart';
export './src/presentation/cubit/tv/tv_series_popular_cubit.dart';
export './src/presentation/cubit/tv/tv_series_recommendations_cubit.dart';
export './src/presentation/cubit/tv/tv_series_top_rated_cubit.dart';

export './src/presentation/cubit/movie/movie_detail_cubit.dart';
export './src/presentation/cubit/movie/movie_now_playing_cubit.dart';
export './src/presentation/cubit/movie/movie_popular_cubit.dart';
export './src/presentation/cubit/movie/movie_recommendations_cubit.dart';
export './src/presentation/cubit/movie/movie_top_rated_cubit.dart';

//TV Series and Movie Pages
export './src/presentation/pages/movie_pages/home_movie_page.dart';
export './src/presentation/pages/movie_pages/movie_detail_page.dart';
export './src/presentation/pages/movie_pages/popular_movies_page.dart';
export './src/presentation/pages/movie_pages/top_rated_movies_page.dart';
export './src/presentation/pages/tv_pages/tv_detail_page.dart'
    hide DetailContent;
export './src/presentation/pages/tv_pages/tv_episode_season_page.dart';
export './src/presentation/pages/tv_pages/tv_see_more_page.dart';

//Usecase
export './src/domain/usecases/movie/get_movie_detail.dart';
export './src/domain/usecases/movie/get_movie_recommendations.dart';
export './src/domain/usecases/movie/get_now_playing_movies.dart';
export './src/domain/usecases/movie/get_popular_movies.dart';
export './src/domain/usecases/movie/get_top_rated_movies.dart';
export './src/domain/usecases/get_watchlist_status.dart';
export './src/domain/usecases/save_watchlist.dart';
export './src/domain/usecases/remove_watchlist.dart';

export './src/domain/usecases/tv/get_airing_today_tv_series.dart';
export './src/domain/usecases/tv/get_detail_tv_series.dart';
export './src/domain/usecases/tv/get_episode_season_tv_series.dart';
export './src/domain/usecases/tv/get_popular_tv_series.dart';
export './src/domain/usecases/tv/get_recommendation_tv_series.dart';
export './src/domain/usecases/tv/get_top_rated_tv_series.dart';
export './src/domain/usecases/tv/get_watch_list_status_tv_series.dart';
export './src/domain/usecases/tv/remove_watchlist_tv_series.dart';
export './src/domain/usecases/tv/save_watchlist_tv_series.dart';

//Repository
export './src/domain/repositories/movie_repository.dart';
export './src/domain/repositories/tv_repository.dart';

export './src/data/repositories/movie_repository_impl.dart';
export './src/data/repositories/tv_repository_impl.dart';

//Entities
export './src/domain/entities/movie.dart';
export './src/domain/entities/tv/tv.dart';

//Datasource

export './src/data/datasources/db/database_helper.dart';

export './src/data/datasources/movie_local_data_source.dart';
export './src/data/datasources/movie_remote_data_source.dart';

export './src/data/datasources/tv_local_data_source.dart';
export './src/data/datasources/tv_remote_data_source.dart';

// Reusable Widget
export './src/presentation/widgets/movie_card_list.dart';
export './src/presentation/widgets/tv_card_list.dart';

///network info
export './src/common/network_info.dart';
