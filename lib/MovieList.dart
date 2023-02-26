import 'package:flutter/material.dart';
import 'package:neon_ui_design/constants.dart';

class Movie {
  final String movieTitle;
  final String moviePoster;

  Movie({
    required this.movieTitle,
    required this.moviePoster,
  });
}

List<Movie> newMovies = [
  Movie(movieTitle: 'Movie 1', moviePoster: kSpiderMan),
  Movie(movieTitle: 'Movie 2', moviePoster: kMatrix),
  Movie(movieTitle: 'Movie 3', moviePoster: kEternal),
];

List<Movie> upcomingMovies = [
  Movie(movieTitle: 'Movie 1', moviePoster: kAquaMan),
  Movie(movieTitle: 'Movie 2', moviePoster: kBatMan),
  Movie(movieTitle: 'Movie 3', moviePoster: kSonic),
];
