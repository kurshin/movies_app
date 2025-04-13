import 'package:filmguru/feature/movies_list/movies_list_screen.dart';
import 'package:filmguru/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'data/api/movies_service_local.dart';
import 'feature/movies_list/movies_bloc.dart';
import 'generated/l10n.dart';
import 'repository/movies_repository.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => MoviesRepository(MoviesServiceLocal()),
      child: MaterialApp(
        title: 'Filmguru',
        theme: AppTheme.theme,
        home: BlocProvider(
          create: (context) => MoviesCubit(
            RepositoryProvider.of<MoviesRepository>(context),
          )..getMovies(),
          child: const MoviesListScreen(),
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
