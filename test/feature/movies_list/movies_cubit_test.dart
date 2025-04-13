import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:filmguru/data/model/movie_item.dart';
import 'package:filmguru/feature/movies_list/movies_bloc.dart';
import 'package:filmguru/feature/movies_list/movies_state.dart';

import 'movies_repository_mock.mocks.dart'; // generated mock

void main() {
  late MockMoviesRepository mockRepository;
  late MoviesCubit moviesCubit;

  setUp(() {
    mockRepository = MockMoviesRepository();
    moviesCubit = MoviesCubit(mockRepository);
  });

  tearDown(() {
    moviesCubit.close();
  });

  test('initial state is MoviesLoading', () {
    expect(moviesCubit.state, isA<MoviesLoading>());
  });

  blocTest<MoviesCubit, MoviesState>(
    'emits [MoviesLoaded] when getMovies succeeds',
    build: () {
      when(mockRepository.getMovies()).thenAnswer(
            (_) async => [MovieItem(title: 'Test Movie', poster: 'url')],
      );
      return MoviesCubit(mockRepository);
    },
    act: (cubit) => cubit.getMovies(),
    expect: () => [
      isA<MoviesLoaded>().having((state) => state.movies.length, 'movies length', 1),
    ],
  );

  blocTest<MoviesCubit, MoviesState>(
    'emits [MoviesError] when getMovies throws an exception',
    build: () {
      when(mockRepository.getMovies()).thenThrow(Exception('Failed to load'));
      return MoviesCubit(mockRepository);
    },
    act: (cubit) => cubit.getMovies(),
    expect: () => [
      isA<MoviesError>().having((state) => state.message, 'message', contains('Failed to load')),
    ],
  );
}
