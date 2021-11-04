import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'components/body_contact.dart';

class Notification_1 extends StatefulWidget {
  const Notification_1({Key? key}) : super(key: key);

  @override
  _Notification_1State createState() => _Notification_1State();
}

class _Notification_1State extends State<Notification_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(fontFamily: 'Comfortaa', fontSize: 36),
        ),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Body_contact(),
      backgroundColor: Colors.cyan[50],
    );
  }
}
