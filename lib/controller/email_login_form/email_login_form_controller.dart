import 'package:flutter_form_test_sample/controller/email_login_form/email_login_form_state.dart';
import 'package:flutter_form_test_sample/controller/email_login_text_fields_mixin.dart';
import 'package:state_notifier/state_notifier.dart';

class EmailLoginFormController extends StateNotifier<EmailLoginFormState>
    with LocatorMixin, EmailLoginFieldMixin {
  EmailLoginFormController() : super(const EmailLoginFormState());

  void changeObscureText() {
    state = state.copyWith(obscureText: !state.obscureText);
  }

  Future<void> submit() async {
    // エラーメッセージを一度クリアする
    state = state.copyWith(formErrorMessage: null);

    if (!isValid()) {
      state = state.copyWith(formErrorMessage: getErrorMessage());
      return;
    }
  }
}
