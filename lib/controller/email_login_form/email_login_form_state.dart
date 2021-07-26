import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_login_form_state.freezed.dart';

@freezed
abstract class EmailLoginFormState with _$EmailLoginFormState {
  const factory EmailLoginFormState({
    @Default(null) String? formErrorMessage,
    @Default(true) bool obscureText,
  }) = _EmailLoginFormState;
}
