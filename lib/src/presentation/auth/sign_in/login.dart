import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/login_body_widget.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginBodyWidget());
  }
}
