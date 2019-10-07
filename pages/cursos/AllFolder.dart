
import 'package:flutter/material.dart';

class AllFolder extends StatelessWidget {
  const AllFolder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All folders"),),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("Matematica"),
            trailing: Icon (Icons.keyboard_arrow_right),
            onTap: (){ Navigator.pushReplacementNamed(context, "folder");},
            ),
          ListTile(
            title: Text("Química"),
            trailing: Icon (Icons.keyboard_arrow_right),
            onTap: (){ Navigator.pushReplacementNamed(context, "folder");},
            ),
          ListTile(
            title: Text("Programacion"),
            trailing: Icon (Icons.keyboard_arrow_right),
            onTap: (){ Navigator.pushReplacementNamed(context, "folder");},
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
        },
        child: Icon(Icons.add)
        
      ),
    );
  }
}