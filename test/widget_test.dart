// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_form_test_sample/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EmailLoginForm validation test', () {
    testWidgets('正常系', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());
      final loginButton = find.byKey(const ValueKey('EmailLoginButton'));
      final emailTextField = find.byKey(const ValueKey('EmailTextField'));
      final passwordTextField = find.byKey(const ValueKey('PasswordTextField'));
      await tester.enterText(emailTextField, 'email@sample.com');
      await tester.enterText(passwordTextField, 'P@ssW0rd');
      await tester.pump();
      await tester.tap(loginButton);
      await tester.pump();
      expect(find.text('メールアドレスとパスワードを入力してください'), findsNothing);
      expect(find.text('パスワードを入力してください'), findsNothing);
      expect(find.text('メールアドレス入力してください'), findsNothing);
    });

    testWidgets('メールアドレス、パスワードなし', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());
      final loginButton = find.byKey(const ValueKey('EmailLoginButton'));
      await tester.pump();
      await tester.tap(loginButton);
      await tester.pump(const Duration(milliseconds: 100));
      expect(find.text('メールアドレスとパスワードを入力してください'), findsOneWidget);
    });

    testWidgets('パスワードなし', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());
      final loginButton = find.byKey(const ValueKey('EmailLoginButton'));
      final emailTextField = find.byKey(const ValueKey('EmailTextField'));
      await tester.enterText(emailTextField, 'email@sample.com');
      await tester.pump();
      await tester.tap(loginButton);
      await tester.pump(const Duration(milliseconds: 100));
      expect(find.text('パスワードを入力してください'), findsOneWidget);
    });

    testWidgets('メールアドレスなし', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());
      final loginButton = find.byKey(const ValueKey('EmailLoginButton'));
      final passwordTextField = find.byKey(const ValueKey('PasswordTextField'));
      await tester.enterText(passwordTextField, 'P@ssW0rd');
      await tester.pump();
      await tester.tap(loginButton);
      await tester.pump(const Duration(milliseconds: 100));
      expect(find.text('メールアドレスを入力してください'), findsOneWidget);
    });
  });
}
