

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

// este archivo es para mapear los datos de la base de datos a la entidad de la aplicacion
// en caso de que en el futuro se cambie el nombre de los campos que se obtiene del api
// solo se cambia en este archivo y no en toda la aplicacion

class MovieMapper {

  static Movie movieDBToEntity( MovieMovieDB moviedb ) => Movie(
    adult: moviedb.adult, 
    backdropPath: moviedb.backdropPath != '' 
      ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
      : 'https://cdni.iconscout.com/illustration/premium/thumb/not-found-7621869-6167023.png?f=webp', 
    genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
    id: moviedb.id, 
    originalLanguage: moviedb.originalLanguage, 
    originalTitle: moviedb.originalTitle, 
    overview: moviedb.overview, 
    popularity: moviedb.popularity, 
    posterPath: moviedb.posterPath != '' 
      ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
      : 'no-poster', 
    releaseDate: moviedb.releaseDate, 
    title: moviedb.title, 
    video: moviedb.video, 
    voteAverage: moviedb.voteAverage, 
    voteCount: moviedb.voteCount
  );

}