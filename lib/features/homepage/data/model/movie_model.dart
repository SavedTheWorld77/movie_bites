import '../../domain/entities/movie.dart';

class PopularMovieModel extends Popular {
  const PopularMovieModel(
      {required super.movieID,
      required super.posterPath,
      required super.title,
      required super.overview,
      required super.voteAverage});

  factory PopularMovieModel.fromJson(Map<String, dynamic> json) {
    return PopularMovieModel(
      movieID: json['id'],
      posterPath: json['poster_path'],
      title: json['title'],
      overview: json['overview'],
      voteAverage: json['vote_average'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'movieID': movieID,
      'posterPath': posterURL,
      'title': title,
      'overview': overview,
      'voteAverage': voteAverage
    };
  }
}

class TopRatedMovieModel extends TopRated {
  const TopRatedMovieModel(
      {required super.movieID,
      required super.posterPath,
      required super.title,
      required super.overview,
      required super.voteAverage});

  factory TopRatedMovieModel.fromJson(Map<String, dynamic> json) {
    return TopRatedMovieModel(
      movieID: json['id'],
      posterPath: json['poster_path'],
      title: json['title'],
      overview: json['overview'],
      voteAverage: json['vote_average'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'movieID': movieID,
      'posterPath': posterURL,
      'title': title,
      'overview': overview,
      'voteAverage': voteAverage
    };
  }
}

class NowPlayingMovieModel extends NowPlaying {
  const NowPlayingMovieModel(
      {required super.movieID,
      required super.posterPath,
      required super.title,
      required super.overview,
      required super.voteAverage});

  factory NowPlayingMovieModel.fromJson(Map<String, dynamic> json) {
    return NowPlayingMovieModel(
      movieID: json['id'],
      posterPath: json['poster_path'],
      title: json['title'],
      overview: json['overview'],
      voteAverage: json['vote_average'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'movieID': movieID,
      'posterPath': posterURL,
      'title': title,
      'overview': overview,
      'voteAverage': voteAverage
    };
  }
}
