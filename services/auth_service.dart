import 'dart:convert';

import 'package:api_dezzer/global/enviomen.dart';
import 'package:api_dezzer/model/login_reponse.dart';
import 'package:api_dezzer/model/usuario.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService with ChangeNotifier {
  Usuario? usuario;

  bool _autenticando = false;
  bool get autenticando => this._autenticando;
  set autenticando(bool valor) {
    this._autenticando = valor;
    notifyListeners();
  }

  Future<bool> login(String email, String password) async {
    this.autenticando = true;
    //Payload que mandaremos al backend
    final data = {'email': email, 'password': password};
    final uri = Uri.parse('${Environment.apiUrl}/login/');
    final resp = await http.post(
      uri,
      body: jsonEncode(data),
      headers: {'Content-Type': 'application/json'},
    );

    this.autenticando = false;
    print(resp.body);

    //Si la operacion con el servidor es exitosa
    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      //almacenamos el usuario autenticado
      this.usuario = loginResponse.usuario;
      return true;
    } else {
      return false;
    }
  }
}
