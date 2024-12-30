import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/presentation/providers/actors/actors_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorsByMovieProvider = StateNotifierProvider<ActorsByMovieNotifier, Map<String, List<Actor>>>((ref) {

  final actorsRepository = ref.watch( actorsRepositoryProvider );

  return ActorsByMovieNotifier( getActors: actorsRepository.getActorsByMovieId );
});  

/* 
  {
    "45646": <Actor>[],
    "45647": <Actor>[],
    "45648": <Actor>[],
    "45649": <Actor>[],
  }
 */

typedef GetActorsCallback = Future<List<Actor>> Function(String movieId);

class ActorsByMovieNotifier extends StateNotifier<Map<String, List<Actor>>> {

  final GetActorsCallback getActors;
  
  ActorsByMovieNotifier({
    required this.getActors,
  }): super({});

  Future<void> loadActors( String movieId ) async {

    // await para simnular loading
    await Future.delayed(const Duration(seconds: 1));

    if ( state[movieId] != null ) return;
    final List<Actor> actors = await getActors(movieId);

    state = {
      ...state,
      movieId: actors      
    };

  }

}