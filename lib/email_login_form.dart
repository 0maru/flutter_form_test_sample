import 'package:flutter/material.dart';
import 'package:flutter_form_test_sample/controller/email_login_form/email_login_form_controller.dart';
import 'package:flutter_form_test_sample/controller/email_login_form/email_login_form_state.dart';
import 'package:provider/provider.dart';

class EmailLoginForm extends StatelessWidget {
  const EmailLoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (context.select((EmailLoginFormState s) => s.formErrorMessage) != null)
            Text(context.select((EmailLoginFormState s) => s.formErrorMessage!)),
          TextField(
            key: const ValueKey('EmailTextField'),
            controller: context.select((EmailLoginFormController c) => c.emailTextController),
            autofillHints: const [AutofillHints.email],
            keyboardType: TextInputType.emailAddress,
          ),
          TextField(
            key: const ValueKey('PasswordTextField'),
            controller: context.select((EmailLoginFormController c) => c.passwordTextController),
            autofillHints: const [AutofillHints.password],
            keyboardType: TextInputType.visiblePassword,
            obscureText: context.select((EmailLoginFormState s) => s.obscureText),
          ),
          TextButton(
            key: const ValueKey('EmailLoginButton'),
            child: const Text('ログイン'),
            onPressed: () {
              context.read<EmailLoginFormController>().submit();
            },
          ),
        ],
      ),
    );
  }
}
