import 'package:flutter/material.dart';

void main() {
  runApp(Ejem4());
}

class Ejem4 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Ejem4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Botones',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botones en Flutter'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Boton elevado!');
                },
                child: Icon(Icons.star_border),
              ),
              OutlinedButton(
                onPressed: () {
                  print('Boton Outlined!');
                },
                child: Icon(Icons.face_4),
              ),
              TextButton(
                onPressed: () {
                  print('Texto Boton!');
                },
                child: Icon(Icons.shop),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    print('Boton/Icon elevado!');
                  },
                  icon: Icon(Icons.star_border),
                  label: Text('Boton star elevado')),
              OutlinedButton.icon(
                  onPressed: () {
                    print('Boton/Icon elevado!');
                  },
                  icon: Icon(Icons.face_4),
                  label: Text('Boton Outlined ')),
              TextButton.icon(
                  onPressed: () {
                    print('Boton/Icon elevado!');
                  },
                  icon: Icon(Icons.shop),
                  label: Text('Boton Texto')),
            ],
          ),
        ),
      ),
    );
  }
}
