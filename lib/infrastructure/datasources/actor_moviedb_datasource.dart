import 'package:dio/dio.dart';
import 'package:filmverse/conifg/constants/environment.dart';
import 'package:filmverse/domain/datasources/actors_datasource.dart';
import 'package:filmverse/domain/entities/actor.dart';
import 'package:filmverse/infrastructure/mappers/actor_mapper.dart';
import 'package:filmverse/infrastructure/models/moviedb/credits_response.dart';

class ActorMovieDbDatasource extends ActorsDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Environment.theMovieDBKey,
      'language': 'es-ES',
    },
  ));

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    final response = await dio.get(
      '/movie/$movieId/credits',
    );

    final creditsResponse = CreditsResponse.fromJson(response.data);

    final List<Actor> actors = creditsResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();

    return actors;
  }
}
