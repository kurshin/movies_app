import 'package:filmguru/feature/movies_list/widgets/movie_item_row.dart';
import 'package:filmguru/generated/l10n.dart';
import 'package:filmguru/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movies_bloc.dart';
import 'movies_state.dart';

class MoviesListScreen extends StatelessWidget {
  const MoviesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.accentColor, // Optional: if you want a custom background
        centerTitle: true,
        title: Text(
          S.of(context).mainAppBarTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocBuilder<MoviesCubit, MoviesState>(builder: (context, state) {
        if (state is MoviesLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is MoviesLoaded) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final movie = state.movies[index];
              return MovieItemRow(movie);
            },
            itemCount: state.movies.length,
          );
        } else if (state is MoviesError) {
          return Center(child: Text(state.message));
        } else {
          return const Text("Unknown state");
        }
      }),
    );
  }
}

