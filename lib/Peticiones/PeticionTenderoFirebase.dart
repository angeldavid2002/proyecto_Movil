import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:firebase_auth/firebase_auth.dart';

class Peticioneslogin {
  final FirebaseAuth auth = FirebaseAuth.instance;
  static final fs.FirebaseStorage storage = fs.FirebaseStorage.instance;
  static final FirebaseFirestore _db = FirebaseFirestore.instance;


  Future<dynamic> registrarTendero(Map<String, dynamic>Tendero,Map<String, dynamic>Tienda) async {
    try {
      UserCredential usuario = await auth.createUserWithEmailAndPassword(
          email: Tendero['correo'], password: Tendero['password']);
       var referencia = await _db.collection('Tendero').add(Tendero).catchError((e) {
        print(e);
      });
      Tienda['idTendero'] = referencia.id;
      await _db.collection('Tienda').add(Tienda).catchError((e) {
        print(e);
      });
      return usuario;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('Contraseña Debil');
        return '1';
      } else if (e.code == 'email-already-in-use') {
        print('Correo ya Existe');
        return '2';
      }
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> ingresarEmail(dynamic email, dynamic pass) async {
    try {
      UserCredential usuario =
          await auth.signInWithEmailAndPassword(email: email, password: pass);
      return usuario;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Correo no encontrado');
        return '1';
      } else if (e.code == 'wrong-password') {
        print('Password incorrecto');
        return '2';
      }
    }
  }
}
