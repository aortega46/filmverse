import 'package:filmverse/domain/datasources/actors_datasource.dart';
import 'package:filmverse/domain/entities/actor.dart';
import 'package:filmverse/domain/repositories/actors_repository.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource datasource;

  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    return datasource.getActorsByMovie(movieId);
  }
}
