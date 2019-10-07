import 'package:flutter/material.dart';

class Folder extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Curso 1"),),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("Foto 1"),            
            onTap: (){},
            ),
          ListTile(
            title: Text("Foto 2"),
            ),
          ListTile(
            title: Text("Foto 3"),
            )
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