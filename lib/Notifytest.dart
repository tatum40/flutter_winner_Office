import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings("@mipmap/ic_launcher");

  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  runApp(NotifyTest());
}

class NotifyTest extends StatelessWidget {
  const NotifyTest({Key? key}) : super(key: key);

  Future<void> _showNotify() async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            'channel_001', 'notify_test', 'test show result notify',
            importance: Importance.high,
            priority: Priority.high,
            ticker: "ticker",
            );

    const NotificationDetails platformChannelDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

   await flutterLocalNotificationsPlugin.show(
     0,
     'test',
     'show 001 notify',
     platformChannelDetails
   );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text(" show notification test"),
            onPressed: () {
              _showNotify();
            },
          ),
        ),
      ),
    );
  }
}

