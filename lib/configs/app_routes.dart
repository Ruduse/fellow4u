import 'package:fellow4u/pages/forgot_page.dart';
import 'package:fellow4u/pages/intro_screens/slash_page.dart';
import 'package:fellow4u/pages/login_page.dart';
import 'package:fellow4u/pages/register_page.dart';

import '../pages/check_mail.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => SplashPage(),
    '/login': (context) => LoginPage(),
    '/register': (context) => RegisterPage(),
    '/forgot': (context) => ForGotPage(),
    '/checkmail': (context) => CheckMailPage()
  };
  static const login = '/login';
  static const register = '/register';
  static const splash = '/';
  static const main = '/main';
  static const forgot = '/forgot';
  static const checkmail = '/checkmail';
}
