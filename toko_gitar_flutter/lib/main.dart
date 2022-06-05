import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Screens/login/loginScreens.dart';
import 'package:toko_gitar_flutter/routes.dart';
import 'package:toko_gitar_flutter/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: "Toko Gitar Semi",
    theme: theme(),
    initialRoute: loginScreens.routeName,
    routes: routes,
  ));
}
