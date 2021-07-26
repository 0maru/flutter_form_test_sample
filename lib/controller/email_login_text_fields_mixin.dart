import 'package:flutter/widgets.dart';

mixin EmailLoginFieldMixin {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  TextEditingController get emailTextController => _emailTextController;
  TextEditingController get passwordTextController => _passwordTextController;

  void unregisterToTextController() {
    emailTextController.dispose();
    passwordTextController.dispose();
  }

  void clearForm() {
    clearEmail();
    clearPassword();
  }

  void clearEmail() {
    _emailTextController.clear();
  }

  void clearPassword() {
    _passwordTextController.clear();
  }

  bool isValid() {
    if (_emailTextController.text.isEmpty) {
      return false;
    }

    if (_passwordTextController.text.isEmpty) {
      return false;
    }

    return true;
  }

  String getErrorMessage() {
    final messages = [];

    if (_emailTextController.text.isEmpty) {
      messages.add('メールアドレス');
    }

    if (_passwordTextController.text.isEmpty) {
      messages.add('パスワード');
    }

    return '${messages.join('と')}を入力してください';
  }
}
