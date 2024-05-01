import 'package:flutter/material.dart';

void main() {
  runApp(Ejem5());
}

class Ejem5 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Ejem5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Scaffold Demo',
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
                  onPressed: () {},
                  child: Text('Boton Elevado'),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xa797eeff)),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Color(0xff548d98)),
                      textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        //color: Colors.black
                      )))),
              OutlinedButton(
                  onPressed: () {
                    print('Boton Outlined!');
                  },
                  child: Text('Boton Outline'),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      //backgroundColor:
                      //MaterialStateProperty.all<Color>(Color(0xa772b6ec)),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.blue;
                        }
                        return Color(0xffeeed89);
                      }),
                      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic);
                        }
                        return TextStyle();
                      }))),
              TextButton(
                  onPressed: () {
                    print('Texto Boton!');
                  },
                  child: Text('Texto Boton'),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      textStyle: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
