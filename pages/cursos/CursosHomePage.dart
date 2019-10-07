
import 'package:dinamo_rutas_prueba/widgets/AppBarDinamo.dart';
import 'package:flutter/material.dart';

class CursosHome extends StatelessWidget {
  const CursosHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDinamo(context,'Horario'),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Lunes"),
          ListTile(
            title: Text("Matematica"),
            leading: Column(children: <Widget>[Text('8:00'),Text('10:00')],),
            trailing: Icon (Icons.keyboard_arrow_right),
            onTap: (){ Navigator.pushNamed(context, "folder");},
            ),
          ListTile(
            title: Text("Química"),
            leading: Column(children: <Widget>[Text('12:00'),Text('2:00')],),
            trailing: Icon (Icons.keyboard_arrow_right),
            onTap: (){ Navigator.pushNamed(context, "folder");},
            ),
          ListTile(
            title: Text("Teatro"),
            leading: Column(children: <Widget>[Text('8:00'),Text('10:00')],),
            trailing: Icon (Icons.keyboard_arrow_right),
            onTap: (){ Navigator.pushNamed(context, "folder");},
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, "allfolder");
        },
        child: Icon(Icons.folder)
        
      ),
    );
  }
}