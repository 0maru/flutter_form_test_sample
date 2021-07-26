import 'package:flutter/material.dart';
import 'package:flutter_form_test_sample/controller/email_login_form/email_login_form_controller.dart';
import 'package:flutter_form_test_sample/controller/email_login_form/email_login_form_state.dart';
import 'package:flutter_form_test_sample/email_login_form.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<EmailLoginFormController, EmailLoginFormState>(
      create: (_) => EmailLoginFormController(),
      child: Scaffold(
        appBar: AppBar(),
        body: const EmailLoginForm(),
      ),
    );
  }
}
