// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'part_out.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartOut {
  @RfArray()
  List<Part> get partList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartOutCopyWith<PartOut> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartOutCopyWith<$Res> {
  factory $PartOutCopyWith(PartOut value, $Res Function(PartOut) then) =
      _$PartOutCopyWithImpl<$Res, PartOut>;
  @useResult
  $Res call({@RfArray() List<Part> partList});
}

/// @nodoc
class _$PartOutCopyWithImpl<$Res, $Val extends PartOut>
    implements $PartOutCopyWith<$Res> {
  _$PartOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partList = null,
  }) {
    return _then(_value.copyWith(
      partList: null == partList
          ? _value.partList
          : partList // ignore: cast_nullable_to_non_nullable
              as List<Part>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartOutImplCopyWith<$Res> implements $PartOutCopyWith<$Res> {
  factory _$$PartOutImplCopyWith(
          _$PartOutImpl value, $Res Function(_$PartOutImpl) then) =
      __$$PartOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfArray() List<Part> partList});
}

/// @nodoc
class __$$PartOutImplCopyWithImpl<$Res>
    extends _$PartOutCopyWithImpl<$Res, _$PartOutImpl>
    implements _$$PartOutImplCopyWith<$Res> {
  __$$PartOutImplCopyWithImpl(
      _$PartOutImpl _value, $Res Function(_$PartOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partList = null,
  }) {
    return _then(_$PartOutImpl(
      partList: null == partList
          ? _value._partList
          : partList // ignore: cast_nullable_to_non_nullable
              as List<Part>,
    ));
  }
}

/// @nodoc

class _$PartOutImpl implements _PartOut {
  const _$PartOutImpl({@RfArray() final List<Part> partList = const []})
      : _partList = partList;

  final List<Part> _partList;
  @override
  @JsonKey()
  @RfArray()
  List<Part> get partList {
    if (_partList is EqualUnmodifiableListView) return _partList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partList);
  }

  @override
  String toString() {
    return 'PartOut(partList: $partList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartOutImpl &&
            const DeepCollectionEquality().equals(other._partList, _partList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_partList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartOutImplCopyWith<_$PartOutImpl> get copyWith =>
      __$$PartOutImplCopyWithImpl<_$PartOutImpl>(this, _$identity);
}

abstract class _PartOut implements PartOut {
  const factory _PartOut({@RfArray() final List<Part> partList}) =
      _$PartOutImpl;

  @override
  @RfArray()
  List<Part> get partList;
  @override
  @JsonKey(ignore: true)
  _$$PartOutImplCopyWith<_$PartOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Part {
  String get description => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;
  List<SelectedFile> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartCopyWith<Part> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartCopyWith<$Res> {
  factory $PartCopyWith(Part value, $Res Function(Part) then) =
      _$PartCopyWithImpl<$Res, Part>;
  @useResult
  $Res call({String description, String remarks, List<SelectedFile> image});
}

/// @nodoc
class _$PartCopyWithImpl<$Res, $Val extends Part>
    implements $PartCopyWith<$Res> {
  _$PartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? remarks = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<SelectedFile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartImplCopyWith<$Res> implements $PartCopyWith<$Res> {
  factory _$$PartImplCopyWith(
          _$PartImpl value, $Res Function(_$PartImpl) then) =
      __$$PartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String remarks, List<SelectedFile> image});
}

/// @nodoc
class __$$PartImplCopyWithImpl<$Res>
    extends _$PartCopyWithImpl<$Res, _$PartImpl>
    implements _$$PartImplCopyWith<$Res> {
  __$$PartImplCopyWithImpl(_$PartImpl _value, $Res Function(_$PartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? remarks = null,
    Object? image = null,
  }) {
    return _then(_$PartImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<SelectedFile>,
    ));
  }
}

/// @nodoc

class _$PartImpl implements _Part {
  const _$PartImpl(
      {this.description = '',
      this.remarks = '',
      final List<SelectedFile> image = const []})
      : _image = image;

  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String remarks;
  final List<SelectedFile> _image;
  @override
  @JsonKey()
  List<SelectedFile> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString() {
    return 'Part(description: $description, remarks: $remarks, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, remarks,
      const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartImplCopyWith<_$PartImpl> get copyWith =>
      __$$PartImplCopyWithImpl<_$PartImpl>(this, _$identity);
}

abstract class _Part implements Part {
  const factory _Part(
      {final String description,
      final String remarks,
      final List<SelectedFile> image}) = _$PartImpl;

  @override
  String get description;
  @override
  String get remarks;
  @override
  List<SelectedFile> get image;
  @override
  @JsonKey(ignore: true)
  _$$PartImplCopyWith<_$PartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
