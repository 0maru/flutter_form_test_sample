// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'email_login_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailLoginFormStateTearOff {
  const _$EmailLoginFormStateTearOff();

  _EmailLoginFormState call(
      {String? formErrorMessage = null, bool obscureText = true}) {
    return _EmailLoginFormState(
      formErrorMessage: formErrorMessage,
      obscureText: obscureText,
    );
  }
}

/// @nodoc
const $EmailLoginFormState = _$EmailLoginFormStateTearOff();

/// @nodoc
mixin _$EmailLoginFormState {
  String? get formErrorMessage => throw _privateConstructorUsedError;
  bool get obscureText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailLoginFormStateCopyWith<EmailLoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailLoginFormStateCopyWith<$Res> {
  factory $EmailLoginFormStateCopyWith(
          EmailLoginFormState value, $Res Function(EmailLoginFormState) then) =
      _$EmailLoginFormStateCopyWithImpl<$Res>;
  $Res call({String? formErrorMessage, bool obscureText});
}

/// @nodoc
class _$EmailLoginFormStateCopyWithImpl<$Res>
    implements $EmailLoginFormStateCopyWith<$Res> {
  _$EmailLoginFormStateCopyWithImpl(this._value, this._then);

  final EmailLoginFormState _value;
  // ignore: unused_field
  final $Res Function(EmailLoginFormState) _then;

  @override
  $Res call({
    Object? formErrorMessage = freezed,
    Object? obscureText = freezed,
  }) {
    return _then(_value.copyWith(
      formErrorMessage: formErrorMessage == freezed
          ? _value.formErrorMessage
          : formErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      obscureText: obscureText == freezed
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$EmailLoginFormStateCopyWith<$Res>
    implements $EmailLoginFormStateCopyWith<$Res> {
  factory _$EmailLoginFormStateCopyWith(_EmailLoginFormState value,
          $Res Function(_EmailLoginFormState) then) =
      __$EmailLoginFormStateCopyWithImpl<$Res>;
  @override
  $Res call({String? formErrorMessage, bool obscureText});
}

/// @nodoc
class __$EmailLoginFormStateCopyWithImpl<$Res>
    extends _$EmailLoginFormStateCopyWithImpl<$Res>
    implements _$EmailLoginFormStateCopyWith<$Res> {
  __$EmailLoginFormStateCopyWithImpl(
      _EmailLoginFormState _value, $Res Function(_EmailLoginFormState) _then)
      : super(_value, (v) => _then(v as _EmailLoginFormState));

  @override
  _EmailLoginFormState get _value => super._value as _EmailLoginFormState;

  @override
  $Res call({
    Object? formErrorMessage = freezed,
    Object? obscureText = freezed,
  }) {
    return _then(_EmailLoginFormState(
      formErrorMessage: formErrorMessage == freezed
          ? _value.formErrorMessage
          : formErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      obscureText: obscureText == freezed
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EmailLoginFormState implements _EmailLoginFormState {
  const _$_EmailLoginFormState(
      {this.formErrorMessage = null, this.obscureText = true});

  @JsonKey(defaultValue: null)
  @override
  final String? formErrorMessage;
  @JsonKey(defaultValue: true)
  @override
  final bool obscureText;

  @override
  String toString() {
    return 'EmailLoginFormState(formErrorMessage: $formErrorMessage, obscureText: $obscureText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailLoginFormState &&
            (identical(other.formErrorMessage, formErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.formErrorMessage, formErrorMessage)) &&
            (identical(other.obscureText, obscureText) ||
                const DeepCollectionEquality()
                    .equals(other.obscureText, obscureText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(formErrorMessage) ^
      const DeepCollectionEquality().hash(obscureText);

  @JsonKey(ignore: true)
  @override
  _$EmailLoginFormStateCopyWith<_EmailLoginFormState> get copyWith =>
      __$EmailLoginFormStateCopyWithImpl<_EmailLoginFormState>(
          this, _$identity);
}

abstract class _EmailLoginFormState implements EmailLoginFormState {
  const factory _EmailLoginFormState(
      {String? formErrorMessage, bool obscureText}) = _$_EmailLoginFormState;

  @override
  String? get formErrorMessage => throw _privateConstructorUsedError;
  @override
  bool get obscureText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmailLoginFormStateCopyWith<_EmailLoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
