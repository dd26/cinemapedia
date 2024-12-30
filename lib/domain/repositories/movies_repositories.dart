
import 'package:cinemapedia/domain/entities/movie.dart';

// el repositorio es el encargado de decidir de donde se obtienen los datos
// en este caso de la fuente de datos
// el repositorio es el encargado de llamar al datasource

abstract class MoviesRepository {

  Future<List<Movie>>getNowPlaying({ int page = 1 });

  // getPopularMovies
  Future<List<Movie>>getPopular({ int page = 1 });

  // getTopRatedMovies
  Future<List<Movie>>getTopRated({ int page = 1 });

  // getUpcomingMovies
  Future<List<Movie>>getUpcoming({ int page = 1 });

  Future<Movie> getMovieById( String movieId );

}