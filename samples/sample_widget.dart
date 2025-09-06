import 'package:flutter/material.dart';

class SampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Ceci est un exemple de widget réutilisable !'),
        ),
      ),
    );
  }
}
