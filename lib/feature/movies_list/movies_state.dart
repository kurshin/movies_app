import 'package:filmguru/data/model/movie_item.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class MoviesState {}

class MoviesLoading extends MoviesState {}

class MoviesLoaded extends MoviesState {
  final List<MovieItem> movies;

  MoviesLoaded(this.movies);
}

class MoviesError extends MoviesState {
  final String message;

  MoviesError(this.message);
}
