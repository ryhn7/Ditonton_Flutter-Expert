import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:watchlist/watchlist.dart';

class WatchlistMoviesPage extends StatefulWidget {
  // ignore: constant_identifier_names
  static const ROUTE_NAME = '/watchlist-movie';

  const WatchlistMoviesPage({Key? key}) : super(key: key);

  @override
  _WatchlistMoviesPageState createState() => _WatchlistMoviesPageState();
}

class _WatchlistMoviesPageState extends State<WatchlistMoviesPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () {
        // Provider.of<WatchlistMovieNotifier>(context, listen: false).fetchWatchlistMovies();
        // Provider.of<TVSeriesWatchlistNotifier>(context, listen: false).get();
        context.read<TVSeriesWatchlistCubit>().get();
        context.read<MovieWatchlistCubit>().get();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Watchlist'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TabBar(
                indicatorColor: kNetflixRed,
                tabs: [
                  Tab(child: Text('Movie')),
                  Tab(child: Text('TV Series')),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: TabBarView(
                  children: [
                    BlocBuilder<MovieWatchlistCubit, MovieWatchlistState>(
                      builder: (context, state) => _buildWatchlistMovie(state),
                    ),
                    BlocBuilder<TVSeriesWatchlistCubit, TVSeriesWatchlistState>(
                      builder: (context, state) => _buildWatchlistTVSeries(state),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWatchlistMovie(MovieWatchlistState state) {
    if (state is MovieWatchlistLoadingState) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is MovieWatchlistLoadedState) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final movie = state.items[index];
          return MovieCard(movie: movie);
        },
        itemCount: state.items.length,
      );
    } else if (state is MovieWatchlistErrorState) {
      return Center(
        key: const Key('error_message'),
        child: Text(state.message),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildWatchlistTVSeries(TVSeriesWatchlistState state) {
    if (state is TVSeriesWatchlistLoadingState) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is TVSeriesWatchlistLoadedState) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final tv = state.items[index];
          return TVCard(tv: tv);
        },
        itemCount: state.items.length,
      );
    } else if (state is TVSeriesWatchlistErrorState) {
      return Center(
        key: const Key('error_message'),
        child: Text(state.message),
      );
    } else {
      return const SizedBox();
    }
  }
}
