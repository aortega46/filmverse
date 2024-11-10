import 'package:filmverse/infrastructure/datasources/moviedb_datasource.dart';
import 'package:filmverse/infrastructure/repositories/movie_respository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Inmutable
final movieRepositoryProvider = Provider((ref) {
  return MovieRespositoryImpl(MoviedbDatasource());
});
