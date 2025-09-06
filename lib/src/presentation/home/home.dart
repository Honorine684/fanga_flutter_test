import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../_commons/theming/app_color.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: const SafeArea(child: Center(child: Text('Home Page'))),
    );
  }
}
