import 'package:evently/ui/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../screens/navigation/navigation_screen.dart';
import '../screens/register/register_screen.dart';

abstract final class AppRoutes {
  static MaterialPageRoute get login{
    return MaterialPageRoute(builder: (_) => LoginScreen());
  }
  static MaterialPageRoute get registerScreen{
    return MaterialPageRoute(builder: (_) => RegisterScreen());
  }
  static MaterialPageRoute get homeScreen{
    return  MaterialPageRoute(builder: (_) => NavigationScreen());
  }
}


