// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieItemResponse implements DiagnosticableTreeMixin {
  @JsonKey(name: "title")
  String get title;
  @JsonKey(name: "poster_path")
  String get posterPath;

  /// Create a copy of MovieItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieItemResponseCopyWith<MovieItemResponse> get copyWith =>
      _$MovieItemResponseCopyWithImpl<MovieItemResponse>(
          this as MovieItemResponse, _$identity);

  /// Serializes this MovieItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MovieItemResponse'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('posterPath', posterPath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieItemResponse &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, posterPath);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieItemResponse(title: $title, posterPath: $posterPath)';
  }
}

/// @nodoc
abstract mixin class $MovieItemResponseCopyWith<$Res> {
  factory $MovieItemResponseCopyWith(
          MovieItemResponse value, $Res Function(MovieItemResponse) _then) =
      _$MovieItemResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "poster_path") String posterPath});
}

/// @nodoc
class _$MovieItemResponseCopyWithImpl<$Res>
    implements $MovieItemResponseCopyWith<$Res> {
  _$MovieItemResponseCopyWithImpl(this._self, this._then);

  final MovieItemResponse _self;
  final $Res Function(MovieItemResponse) _then;

  /// Create a copy of MovieItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? posterPath = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MovieItemResponse
    with DiagnosticableTreeMixin
    implements MovieItemResponse {
  _MovieItemResponse(@JsonKey(name: "title") this.title,
      @JsonKey(name: "poster_path") this.posterPath);
  factory _MovieItemResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieItemResponseFromJson(json);

  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "poster_path")
  final String posterPath;

  /// Create a copy of MovieItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieItemResponseCopyWith<_MovieItemResponse> get copyWith =>
      __$MovieItemResponseCopyWithImpl<_MovieItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MovieItemResponseToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MovieItemResponse'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('posterPath', posterPath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieItemResponse &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, posterPath);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieItemResponse(title: $title, posterPath: $posterPath)';
  }
}

/// @nodoc
abstract mixin class _$MovieItemResponseCopyWith<$Res>
    implements $MovieItemResponseCopyWith<$Res> {
  factory _$MovieItemResponseCopyWith(
          _MovieItemResponse value, $Res Function(_MovieItemResponse) _then) =
      __$MovieItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "poster_path") String posterPath});
}

/// @nodoc
class __$MovieItemResponseCopyWithImpl<$Res>
    implements _$MovieItemResponseCopyWith<$Res> {
  __$MovieItemResponseCopyWithImpl(this._self, this._then);

  final _MovieItemResponse _self;
  final $Res Function(_MovieItemResponse) _then;

  /// Create a copy of MovieItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? posterPath = null,
  }) {
    return _then(_MovieItemResponse(
      null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
