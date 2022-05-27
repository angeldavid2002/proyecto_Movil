import 'package:flutter/material.dart';

class VistaUsuario extends StatelessWidget {
  const VistaUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PaginaInicio());
  }
}

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina inicio"),
      ),
      body: Lista(),
    );
  }
}

class Lista extends StatelessWidget {
  const Lista({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Image.network("https://image.shutterstock.com/image-vector/young-man-lodger-vector-illustration-260nw-654168382.jpg"),
        );
      },
    );
  }
}
