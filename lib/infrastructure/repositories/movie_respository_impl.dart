import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

class MovieRespositoryImpl extends MoviesRepository {
  final MoviesDatasource datasource;

  MovieRespositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int pages = 1}) {
    return datasource.getNowPlaying(pages: pages);
  }
}
