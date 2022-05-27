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
            children: [CircleAvatar()],
          )
        ],
      ),
    );
  }
}
