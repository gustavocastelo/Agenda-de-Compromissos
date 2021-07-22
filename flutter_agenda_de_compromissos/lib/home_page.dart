import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iniciante_widgets/CustomIcons/my_flutter_app_icons.dart';
import 'package:flutter_iniciante_widgets/home2_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFF0F5),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
          child: Text(
            'Agenda Espaço Ilka Reis',
            style: TextStyle(fontFamily: 'Italianno', fontSize: 35),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFF0F5),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFFFF1493),
            ),
            title: Text(
              'Home',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFFFF1493)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.app_registration,
              color: Color(0xFFFF1493),
            ),
            title: Text(
              'Cadastro',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFFFF1493)),
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.zoom_in,
                color: Color(0xFFFF1493),
              ),
              title: Text(
                'Consulta',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFFFF1493)),
              )),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logosalao2.png"),
                  fit: BoxFit.contain,
                ),
                gradient: LinearGradient(
                    colors: <Color>[Colors.pink, Colors.pinkAccent]),
                color: Colors.purpleAccent,
              ),
              padding: EdgeInsets.only(top: 5.0, left: 60),
              child: Text(
                'Espaço Ilka Reis',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pinyon_Script',
                  fontSize: 30,
                ),
              ),
            ),
            ExpansionTile(
              leading: Icon(Icons.app_registration),
              title: Text(
                "Cadastro",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Cadastro de Clientes",
              ),
            ),
            ExpansionTile(
              // ListTile(
              leading: Icon(
                Icons.zoom_in,
              ),
              title: Text(
                "Consulta",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              children: [
                ListTile(
                  title: Text(
                    "Por cliente",
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  focusColor: Color(0xFAE3F4),
                ),
                ListTile(
                  title: Text(
                    "Por data",
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  focusColor: Color(0xFAE3F4),
                ),
                ListTile(
                  title: Text(
                    "Por serviço",
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  focusColor: Color(0xFAE3F4),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.settings),
              backgroundColor: Color(0xFAE3F4),
              title: Text(
                "Serviços",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              subtitle: Text(
                "Serviços Oferecidos",
              ),
              children: [
                ListTile(
                  leading: Tab(icon: Icon(MyFlutterApp.alisamento)),
                  title: Text('Alisamento'),
                  //trailing: Icon(Icons.keyboard_arrow_right),
                  //onTap: () {
                  //_printarNaTela();
                  //},
                ),
                ListTile(
                  leading: Tab(icon: Icon(MyFlutterApp.tintura)),
                  title: Text('Tintura'),
                  //trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Tab(icon: Icon(MyFlutterApp.botox)),
                  title: Text('Botox'),
                  //trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Tab(icon: Icon(MyFlutterApp.colorimetria)),
                  title: Text('Colorimetria'),
                  //trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Tab(icon: Icon(MyFlutterApp.escova)),
                  title: Text('Escova'),
                  //trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Tab(icon: Icon(MyFlutterApp.luzes)),
                  title: Text('Luzes'),
                  // trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Tab(icon: Icon(MyFlutterApp.progressiva)),
                  title: Text('Progressiva'),
                  //trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Sair",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        /* children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/bitmap.png",
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],*/
      ),
    );
  }
}
