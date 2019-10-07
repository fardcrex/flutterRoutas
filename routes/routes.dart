import 'package:dinamo_rutas_prueba/pages/cursos/AllFolder.dart';
import 'package:dinamo_rutas_prueba/pages/cursos/CursosHomePage.dart';
import 'package:dinamo_rutas_prueba/pages/cursos/Folder.dart';
import 'package:dinamo_rutas_prueba/pages/fotocapture/FotoCaptureHome.dart';
import 'package:dinamo_rutas_prueba/pages/social/SocialHome.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder > getRoutesDinamoApp(){
  return {
    'cursosHome':(BuildContext contex)=>CursosHome(),
      'allfolder':(BuildContext contex)=>AllFolder(),
      'folder':(BuildContext contex)=>Folder(),
      
    'fotoCaptureHome':(BuildContext contex)=>FotoCaptureHome(storage: CounterStorage()),
    'socialHome':(BuildContext contex)=>SocialHome(),
  };
}