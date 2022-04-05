// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ship_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShipEventTearOff {
  const _$ShipEventTearOff();

  GetShip getShip({required String name}) {
    return GetShip(
      name: name,
    );
  }
}

/// @nodoc
const $ShipEvent = _$ShipEventTearOff();

/// @nodoc
mixin _$ShipEvent {
  String get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) getShip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? getShip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? getShip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetShip value) getShip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetShip value)? getShip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetShip value)? getShip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipEventCopyWith<ShipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipEventCopyWith<$Res> {
  factory $ShipEventCopyWith(ShipEvent value, $Res Function(ShipEvent) then) =
      _$ShipEventCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ShipEventCopyWithImpl<$Res> implements $ShipEventCopyWith<$Res> {
  _$ShipEventCopyWithImpl(this._value, this._then);

  final ShipEvent _value;
  // ignore: unused_field
  final $Res Function(ShipEvent) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetShipCopyWith<$Res> implements $ShipEventCopyWith<$Res> {
  factory $GetShipCopyWith(GetShip value, $Res Function(GetShip) then) =
      _$GetShipCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class _$GetShipCopyWithImpl<$Res> extends _$ShipEventCopyWithImpl<$Res>
    implements $GetShipCopyWith<$Res> {
  _$GetShipCopyWithImpl(GetShip _value, $Res Function(GetShip) _then)
      : super(_value, (v) => _then(v as GetShip));

  @override
  GetShip get _value => super._value as GetShip;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(GetShip(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetShip implements GetShip {
  const _$GetShip({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'ShipEvent.getShip(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetShip &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $GetShipCopyWith<GetShip> get copyWith =>
      _$GetShipCopyWithImpl<GetShip>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) getShip,
  }) {
    return getShip(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? getShip,
  }) {
    return getShip?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? getShip,
    required TResult orElse(),
  }) {
    if (getShip != null) {
      return getShip(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetShip value) getShip,
  }) {
    return getShip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetShip value)? getShip,
  }) {
    return getShip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetShip value)? getShip,
    required TResult orElse(),
  }) {
    if (getShip != null) {
      return getShip(this);
    }
    return orElse();
  }
}

abstract class GetShip implements ShipEvent {
  const factory GetShip({required String name}) = _$GetShip;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  $GetShipCopyWith<GetShip> get copyWith => throw _privateConstructorUsedError;
}
