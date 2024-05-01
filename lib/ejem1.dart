import 'package:flutter/material.dart';

void main() {
  runApp(Ejem1());
}

class Ejem1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Ejem1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Scaffold Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
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
                child: Text('Boton Elevado'),
              ),
              OutlinedButton(
                onPressed: () {
                  print('Boton Outlined!');
                },
                child: Text('Boton Outline'),
              ),
              TextButton(
                onPressed: () {
                  print('Texto Boton!');
                },
                child: Text('Texto Boton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
