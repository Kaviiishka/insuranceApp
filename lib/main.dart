import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance/pages/login.dart';
import 'package:insurance/pages/login_scrn.dart';
import 'package:insurance/pages/notification_1.dart';
import 'package:insurance/pages/notification_2.dart';
import 'package:insurance/pages/welcome.dart';
import 'package:insurance/pages/review.dart';
import 'package:insurance/pages/contact.dart';
import 'package:insurance/pages/accept_1.dart';
import 'package:insurance/pages/accept_2.dart';
import 'package:insurance/pages/accept_3.dart';
import 'package:insurance/pages/map.dart';
import 'package:insurance/pages/create_account_1.dart';
import 'package:insurance/pages/create_account_2.dart';

void main() => runApp(ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: () => MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Login(),
          '/welcome': (context) => Welcome_screen(),
          '/review': (context) => Review(),
          '/contact': (context) => Contact(),
          '/login_scrn': (context) => LoginScrn(),
          '/notification_1': (context) => Notification_1(),
          '/notification_2': (context) => Notification_2(),
          '/create_account_1': (context) => CreateAccount1(),
          '/create_account_2': (context) => CreateAccount2(),
          '/accept_1': (context) => Accept1(),
          '/accept_2': (context) => Accept2(),
          '/accept_3': (context) => Accept3(),
          '/map': (context) => Map(),
        },
      ),
    ));
