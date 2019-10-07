import 'package:dinamo_rutas_prueba/widgets/AppBarDinamo.dart';
import 'package:flutter/material.dart';

class SocialHome extends StatelessWidget {
  const SocialHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDinamo(context,'Chat')
    );
  }
}