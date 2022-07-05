import '../entities/movie.dart';

abstract class MovieRepository {
  Future<List<Popular>> getPopularMovies();
  Future<List<NowPlaying>> getNowPlayingMovies();
  Future<List<TopRated>> getTopRatedMovies();
}
