import 'package:fcm_flutter/home.dart';
import 'package:fcm_flutter/notification_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list = <String, WidgetBuilder>{
    '/home': (context) => const Home(),
    '/notification': (context) => const NotificationPage(),
  };

  static String initial = '/home';

  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
