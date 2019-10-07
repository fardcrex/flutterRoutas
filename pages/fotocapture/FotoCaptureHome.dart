import 'package:dinamo_rutas_prueba/widgets/AppBarDinamo.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' ;
/* class FotoCaptureHome extends StatelessWidget {
  const FotoCaptureHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDinamo(context,'FotoCapture'),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         
        },
        child: Icon(Icons.camera)
        
      ),
    );
  }
} */
class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/imagen.png');
  }

  Future<File> readCounter() async {
    try {
      final file = await _localFile;

      // Leer archivo
     // String contents = await file.readAsString();

      return file;
    } catch (e) {
      // Si encuentras un error, regresamos 0
      return null;
    }
  }

  Future<File> writeCounter(File image) async {

    final path = await _localPath;
    final  fileName = basename('$path/imagen.png');
    print(fileName);
    // Escribir archivo
    return image.copy('$path/imagen.png');
  }
}

class FotoCaptureHome extends StatefulWidget {
  final CounterStorage storage;

  FotoCaptureHome({Key key, @required this.storage}) : super(key: key);

  @override
  _FotoCaptureHomeState createState() => _FotoCaptureHomeState();
}

class _FotoCaptureHomeState extends State<FotoCaptureHome> {
  int _counter;
  File _image;
  @override
  void initState() {
    super.initState();
    widget.storage.readCounter().then((File value) {
      setState(() {
        _image = value;
      });
    });
  }

  Future<File> getImage() async {
    File image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });

    // Escribe las variables como texto en el archivo
    return widget.storage.writeCounter(image);
  }

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBarDinamo(context,'FotoCapture'),
        body: Center(
            child:Column(
              children: <Widget>[
                SizedBox(
                  height: 50,

                ),
                SizedBox(
                  height: 50,
                 child: Text('foto capturada',style: TextStyle(fontSize: 22),),
                ),
              SizedBox(
                height: 250,
                width: 500,
                child: _image == null
                    ? Text('No imagem selected.')
                    : Image.file(_image),
              )],
            )

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getImage,
          tooltip: 'Pick Image',
          child: Icon(Icons.add_a_photo),
        ),
      ) 

    ;


  }
}