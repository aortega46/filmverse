import 'package:filmverse/domain/entities/actor.dart';
import 'package:filmverse/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) => Actor(
        id: cast.id,
        name: cast.name,
        profilePath: cast.profilePath != null
            ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
            : 'https://vectorified.com/images/no-profile-picture-icon-24.jpg',
        character: cast.character,
      );
}
