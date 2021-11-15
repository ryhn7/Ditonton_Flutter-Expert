import 'package:core/src/common/network_info.dart';
import 'package:core/src/data/datasources/db/database_helper.dart';
import 'package:core/src/data/datasources/movie_local_data_source.dart';
import 'package:core/src/data/datasources/movie_remote_data_source.dart';
import 'package:core/src/data/datasources/tv_local_data_source.dart';
import 'package:core/src/data/datasources/tv_remote_data_source.dart';
import 'package:core/src/domain/repositories/movie_repository.dart';
import 'package:core/src/domain/repositories/tv_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([
  MovieRepository,
  MovieRemoteDataSource,
  MovieLocalDataSource,
  NetworkInfo,

  /// TV Resource
  TVRepository,
  TVRemoteDataSource,
  TVLocalDataSource,
  DatabaseHelper,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
