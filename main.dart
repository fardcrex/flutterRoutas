import 'package:dinamo_rutas_prueba/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(  
        primarySwatch: Colors.teal
      ),
      initialRoute: 'fotoCaptureHome',
      routes: getRoutesDinamoApp(),
    );
  }
}

