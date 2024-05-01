import 'package:flutter/material.dart';

import 'package:uribe0418/ejem1.dart';
import 'package:uribe0418/ejem2.dart';
import 'package:uribe0418/ejem3.dart';
import 'package:uribe0418/ejem4.dart';
import 'package:uribe0418/ejem5.dart';

import 'my_drawer_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//s9s9s9s  rrrrrrr

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.ejem1;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.ejem1) {
      container = Ejem1();
    } else if (currentPage == DrawerSections.ejem2) {
      container = Ejem2();
    } else if (currentPage == DrawerSections.ejem3) {
      container = Ejem3();
    } else if (currentPage == DrawerSections.ejem4) {
      container = Ejem4();
    } else if (currentPage == DrawerSections.ejem5) {
      container = Ejem5();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff2acd1),
        title: Text("Vivian Uribe"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Ejemplo 1", Icons.event,
              currentPage == DrawerSections.ejem1 ? true : false),
          menuItem(2, "Ejemplo 2", Icons.grass,
              currentPage == DrawerSections.ejem2 ? true : false),
          menuItem(3, "Ejemplo 3", Icons.offline_pin,
              currentPage == DrawerSections.ejem3 ? true : false),
          menuItem(4, "Ejemplo 4", Icons.privacy_tip,
              currentPage == DrawerSections.ejem4 ? true : false),
          menuItem(5, "Ejemplo 5", Icons.person_2_outlined,
              currentPage == DrawerSections.ejem5 ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.ejem1;
            } else if (id == 2) {
              currentPage = DrawerSections.ejem2;
            } else if (id == 3) {
              currentPage = DrawerSections.ejem3;
            } else if (id == 4) {
              currentPage = DrawerSections.ejem4;
            } else if (id == 5) {
              currentPage = DrawerSections.ejem5;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections { ejem1, ejem2, ejem3, ejem4, ejem5 }
