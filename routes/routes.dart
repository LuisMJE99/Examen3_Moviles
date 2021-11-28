import 'package:api_dezzer/pages/login_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  ///'Registrar': (_) => RegistrarPage(),
};
