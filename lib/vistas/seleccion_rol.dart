import 'dart:html';

import 'package:flutter/material.dart';

class VistaRol extends StatefulWidget {
  VistaRol({Key? key}) : super(key: key);

  @override
  State<VistaRol> createState() => _VistaRolState();
}

class _VistaRolState extends State<VistaRol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 188, 89, 1),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 200.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/logotendero.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(255, 227, 183, 1),
                ),
                width: 400,
                height: 250,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: EdgeInsets.all(20),
                child: Text(
                  'Seleccione su tipo de rol',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 20.0,
                      color: Color.fromRGBO(254, 74, 86, 1)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
