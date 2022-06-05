import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:toko_gitar_flutter/Screens/login/loginScreens.dart';
import 'package:toko_gitar_flutter/Screens/register/registrasi.dart';

final Map<String, WidgetBuilder> routes = {
  loginScreens.routeName: (context) => loginScreens(),
  registerScreens.routeName: (context) => registerScreens()
};
