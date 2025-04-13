// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoviesResponse _$MoviesResponseFromJson(Map<String, dynamic> json) =>
    _MoviesResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MoviesResponseToJson(_MoviesResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
