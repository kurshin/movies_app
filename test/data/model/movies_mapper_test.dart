import 'package:flutter_test/flutter_test.dart';
import 'package:filmguru/data/api/model/movie_item_response.dart';
import 'package:filmguru/data/model/movies_mapper.dart';

void main() {
  group('MoviesMapper', () {
    test('correctly maps MovieItemResponse to MovieItem', () {
      // Arrange
      var movieItemResponse = MovieItemResponse(
        'Inception',
        '/inception.jpg',
      );

      // Act
      final movieItem = MoviesMapper.mapMovie(movieItemResponse);

      // Assert
      expect(movieItem.title, equals('Inception'));
      expect(
        movieItem.poster,
        equals('https://image.tmdb.org/t/p/w500/inception.jpg'),
      );
    });
  });
}
