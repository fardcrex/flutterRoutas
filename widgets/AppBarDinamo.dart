import 'package:flutter/material.dart';

AppBar AppBarDinamo(BuildContext context,title){ 
  
  
  return AppBar(
      
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.dns),
            onPressed: (){
              if(title != 'Horario'){
                Navigator.pushReplacementNamed(context, "cursosHome");
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.add_a_photo),
            onPressed: (){
              if(title != 'FotoCapture'){
                Navigator.pushReplacementNamed(context, "fotoCaptureHome");
              }   
            },
          ),
          IconButton(
            icon: Icon(Icons.accessibility_new),
            onPressed: (){
              if(title != 'Chat'){
                Navigator.pushReplacementNamed(context, "socialHome");
              }             
            },
          ),
        ],
     
    );
}