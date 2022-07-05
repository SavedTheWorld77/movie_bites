import 'package:equatable/equatable.dart';

abstract class Movie extends Equatable {
  final String movieID;
  final String _posterPath;
  final String title;
  final String overview;

  const Movie(this.movieID, this._posterPath, this.title, this.overview);

  get posterURL => "https://image.tmdb.org/t/p/w500/$_posterPath";
  @override
  List<Object?> get props => [movieID, _posterPath, title, overview];
}

class Popular extends Movie {
  final double voteAverage;

  const Popular(
      {required String movieID,
      required String posterPath,
      required String title,
      required String overview,
      required this.voteAverage})
      : super(movieID, posterPath, title, overview);
}

class TopRated extends Movie {
  final double voteAverage;

  const TopRated(
      {required String movieID,
      required String posterPath,
      required String title,
      required String overview,
      required this.voteAverage})
      : super(movieID, posterPath, title, overview);
}

class NowPlaying extends Movie {
  final double voteAverage;

  const NowPlaying(
      {required String movieID,
      required String posterPath,
      required String title,
      required String overview,
      required this.voteAverage})
      : super(movieID, posterPath, title, overview);
}
