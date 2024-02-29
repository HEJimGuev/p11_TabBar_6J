import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Learning",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: "Vuelos",
              icon: Icon(Icons.flight),
            ),
            Tab(
              text: "Hoteles",
              icon: Icon(Icons.hotel_class),
            ),
            Tab(text: "Comidas", icon: Icon(Icons.restaurant)),
            Tab(
              text: "Destinos",
              icon: Icon(Icons.location_on),
            ),
          ]),
          title: Text("TabBar Haydee Jimenez"),
        ),
        body: TabBarView(
          children: const <Widget>[
            Center(
              child: Text("Vuelos",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            ),
            Center(
              child: Text("Hoteles",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            ),
            Center(
              child: Text("Restaurantes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            ),
            Center(
              child: Text("Destinos",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            ),
          ],
        ),
      ),
    );
  }
}
