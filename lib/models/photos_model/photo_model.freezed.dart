// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return _PhotoModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoModel {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoModelCopyWith<PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res, PhotoModel>;
  @useResult
  $Res call({int id, String url});
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res, $Val extends PhotoModel>
    implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoModelImplCopyWith<$Res>
    implements $PhotoModelCopyWith<$Res> {
  factory _$$PhotoModelImplCopyWith(
          _$PhotoModelImpl value, $Res Function(_$PhotoModelImpl) then) =
      __$$PhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url});
}

/// @nodoc
class __$$PhotoModelImplCopyWithImpl<$Res>
    extends _$PhotoModelCopyWithImpl<$Res, _$PhotoModelImpl>
    implements _$$PhotoModelImplCopyWith<$Res> {
  __$$PhotoModelImplCopyWithImpl(
      _$PhotoModelImpl _value, $Res Function(_$PhotoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$PhotoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoModelImpl with DiagnosticableTreeMixin implements _PhotoModel {
  const _$PhotoModelImpl({required this.id, required this.url});

  factory _$PhotoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoModelImplFromJson(json);

  @override
  final int id;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotoModel(id: $id, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      __$$PhotoModelImplCopyWithImpl<_$PhotoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoModel implements PhotoModel {
  const factory _PhotoModel(
      {required final int id, required final String url}) = _$PhotoModelImpl;

  factory _PhotoModel.fromJson(Map<String, dynamic> json) =
      _$PhotoModelImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
