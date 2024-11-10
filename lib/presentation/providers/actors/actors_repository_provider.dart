import 'package:filmverse/infrastructure/datasources/actor_moviedb_datasource.dart';
import 'package:filmverse/infrastructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Inmutable
final actorsRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl(ActorMovieDbDatasource());
});
