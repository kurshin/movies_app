// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieItem {
  String get title;
  String get poster;

  /// Create a copy of MovieItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieItemCopyWith<MovieItem> get copyWith =>
      _$MovieItemCopyWithImpl<MovieItem>(this as MovieItem, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.poster, poster) || other.poster == poster));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, poster);

  @override
  String toString() {
    return 'MovieItem(title: $title, poster: $poster)';
  }
}

/// @nodoc
abstract mixin class $MovieItemCopyWith<$Res> {
  factory $MovieItemCopyWith(MovieItem value, $Res Function(MovieItem) _then) =
      _$MovieItemCopyWithImpl;
  @useResult
  $Res call({String title, String poster});
}

/// @nodoc
class _$MovieItemCopyWithImpl<$Res> implements $MovieItemCopyWith<$Res> {
  _$MovieItemCopyWithImpl(this._self, this._then);

  final MovieItem _self;
  final $Res Function(MovieItem) _then;

  /// Create a copy of MovieItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? poster = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _self.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _MovieItem implements MovieItem {
  _MovieItem({required this.title, required this.poster});

  @override
  final String title;
  @override
  final String poster;

  /// Create a copy of MovieItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieItemCopyWith<_MovieItem> get copyWith =>
      __$MovieItemCopyWithImpl<_MovieItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.poster, poster) || other.poster == poster));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, poster);

  @override
  String toString() {
    return 'MovieItem(title: $title, poster: $poster)';
  }
}

/// @nodoc
abstract mixin class _$MovieItemCopyWith<$Res>
    implements $MovieItemCopyWith<$Res> {
  factory _$MovieItemCopyWith(
          _MovieItem value, $Res Function(_MovieItem) _then) =
      __$MovieItemCopyWithImpl;
  @override
  @useResult
  $Res call({String title, String poster});
}

/// @nodoc
class __$MovieItemCopyWithImpl<$Res> implements _$MovieItemCopyWith<$Res> {
  __$MovieItemCopyWithImpl(this._self, this._then);

  final _MovieItem _self;
  final $Res Function(_MovieItem) _then;

  /// Create a copy of MovieItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? poster = null,
  }) {
    return _then(_MovieItem(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _self.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
