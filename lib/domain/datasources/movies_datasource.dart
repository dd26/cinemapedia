
import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MoviesDatasource {

  Future<List<Movie>>getNowPlaying({ int page = 1 });

  // getPopularMovies
  Future<List<Movie>>getPopular({ int page = 1 });

  // getTopRatedMovies
  Future<List<Movie>>getTopRated({ int page = 1 });

  // getUpcomingMovies
  Future<List<Movie>>getUpcoming({ int page = 1 });

  Future<Movie> getMovieById( String movieId );
}