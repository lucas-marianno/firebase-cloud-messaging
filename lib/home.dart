import 'package:fcm_flutter/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool value = false;

  void toggleValue() {
    setState(() {
      value = !value;
      if (value) {
        Provider.of<NotificationService>(context, listen: false).showNotification(
          CustomNotification(
            id: 1,
            title: 'test',
            body: 'Acesse o app!',
            payload: '/notification',
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FCM Notifications'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListTile(
            onTap: toggleValue,
            tileColor: Colors.grey[800],
            title: const Text('Lembre-me mais tarde'),
            trailing: Icon(
              value ? Icons.check_box : Icons.check_box_outline_blank,
            ),
          ),
        ),
      ),
    );
  }
}
